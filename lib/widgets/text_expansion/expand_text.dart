/// Author of code: jesusrp98, https://github.com/jesusrp98/expand_widget/tree/master/lib/src
/// expand_text has been taken from an online tutorial and manipulated for this project

import 'package:flutter/material.dart';
import 'expand_arrow.dart';

/// Default animation duration
const Duration _kExpand = Duration(milliseconds: 300);

/// This widget is used to show partial text, if the text is too big for the parent size.
/// You can specify the [maxLenght] parameter. If the text is short enough, no 'expand arrow' widget will be shown.
class ExpandText extends StatefulWidget {
  /// Message used as a tooltip when the widget is minimized
  final String minMessage;
  /// Message used as a tooltip when the widget is maximazed
  final String maxMessage;
  /// Color of the arrow widget. Defaults to the caption text style color.
  final Color arrowColor;
  /// Size of the arrow widget. Default is 30.
  final double arrowSize;
  /// How long the expanding animation takes. Default is 300ms.
  final Duration animationDuration;
  /// Text that will be displayed
  final String text;
  /// Maximun number of lines the widget shows when it's minimized
  final int maxLength;
  final TextStyle style;
  /// Corresponds to the aling parameter of the text view
  final TextAlign textAlign;
  /// Corresponds to the overflow parameter of the text view. Default is 'fade'.
  final TextOverflow overflow;
  final bool expandWidth;
  final bool expandOnGesture;

  const ExpandText(
    this.text, {
    Key key,
    this.minMessage = 'Show more',
    this.maxMessage = 'Show less',
    this.arrowColor,
    this.arrowSize = 30,
    this.animationDuration = _kExpand,
    this.maxLength = 1,
    this.style,
    this.textAlign,
    this.overflow = TextOverflow.fade,
    this.expandWidth = false,
    this.expandOnGesture = true,
  }) : super(key: key);

  @override
  _ExpandTextState createState() => _ExpandTextState();
}

class _ExpandTextState extends State<ExpandText>
    with TickerProviderStateMixin<ExpandText> {
  /// Custom animation curve for arrow control
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeInOutCubic);

  /// Controls the rotation of the arrow widget
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0.0, end: 0.5);

  AnimationController _controller;
  Animation<double> _iconTurns;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Method called when the user clicks on the expand arrow,
  /// clicks or drags on the child text view.
  void _handleTap([DragEndDetails dragDetails]) {
    setState(() {
      // If the user dragged the content
      if (dragDetails != null) {
        if (dragDetails.primaryVelocity != 0) {
          _isExpanded = dragDetails.primaryVelocity > 0;
          dragDetails.primaryVelocity > 0
              ? _controller.forward()
              : _controller.reverse();
        }
      } else {
        _isExpanded = !_isExpanded;
        _isExpanded ? _controller.forward() : _controller.reverse();
      }
    });
  }

  /// Builds the widget itself. If the [_isExpanded] parameter is 'true',
  /// the [child] parameter will contain the child information, passed to this instance of the object.
  Widget _buildChildren(BuildContext context, Widget child) {
    return LayoutBuilder(builder: (context, size) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: widget.text,
          style: widget.style,
        ),
        textDirection: TextDirection.rtl,
        maxLines: widget.maxLength,
      )..layout(maxWidth: size.maxWidth);

      return textPainter.didExceedMaxLines
          ? Column(
              crossAxisAlignment: widget.expandWidth
                  ? CrossAxisAlignment.stretch
                  : CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AnimatedSize(
                  vsync: this,
                  duration: widget.animationDuration,
                  alignment: Alignment.topCenter,
                  curve: Curves.easeInOutCubic,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: GestureDetector(
                      child: child,
                      onTap: widget.expandOnGesture ? _handleTap : null,
                      onVerticalDragEnd:
                          widget.expandOnGesture ? _handleTap : null,
                    ),
                  ),
                ),
                ExpandArrow(
                  minMessage: widget.minMessage,
                  maxMessage: widget.maxMessage,
                  color: widget.arrowColor,
                  size: widget.arrowSize,
                  animation: _iconTurns,
                  onTap: _handleTap,
                ),
              ],
            )
          : child;
    });
  }

  /// Returns the actual maximun number of allowed lines,
  /// depending on [_isExpanded].
  /// If [overflow] is set to ellipsis, it must not return null
  int get _maxLines {
    if (_isExpanded) {
      return (widget.overflow == TextOverflow.ellipsis) ? 2 ^ 64 : null;
    } else {
      return widget.maxLength;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: Text(
        widget.text,
        textAlign: widget.textAlign,
        overflow: widget.overflow,
        style: widget.style,
        maxLines: _maxLines,
      ),
    );
  }
}
