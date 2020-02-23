import 'package:flutter/material.dart';

/// This widget is used in both [ExpandChild] & [ExpandText] widgets to show the hidden information to the user
class ExpandArrow extends StatefulWidget {
  /// Message used as a tooltip when the widget is minimized or maximised
  final String minMessage;
  final String maxMessage;
  /// Controls the arrow fluid(TM) animation
  final Animation<double> animation;
  /// Callback to control what happens when the arrow is clicked
  final Function onTap;
  final Color color;
  final double size;

  const ExpandArrow({
    Key key,
    this.minMessage,
    this.maxMessage,
    @required this.animation,
    @required this.onTap,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  _ExpandArrowState createState() => _ExpandArrowState();
}

class _ExpandArrowState extends State<ExpandArrow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Tooltip(
        message: message,
        child: InkResponse(
          child: RotationTransition(
            turns: widget.animation,
            child: Icon(
              Icons.expand_more,
              color: widget.color ?? Theme.of(context).textTheme.caption.color,
              size: widget.size,
            ),
          ),
          onTap: widget.onTap,
        ),
      ),
    );
  }

  /// Shows a tooltip message depending on the [animation] state.
  String get message =>
      widget.animation.value == 0 ? widget.minMessage : widget.maxMessage;
}
