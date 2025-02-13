// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

import 'messages_es.dart' as messages_es;
import 'messages_en.dart' as messages_en;
import 'messages_messages.dart' as messages_messages;
import 'messages_de.dart' as messages_de;
import 'messages_fr.dart' as messages_fr;
import 'messages_nl.dart' as messages_nl;
import 'messages_pt.dart' as messages_pt;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'es': () => new Future.value(null),
  'en': () => new Future.value(null),
  'messages': () => new Future.value(null),
  'ja': () => new Future.value(null),
  'de': () => new Future.value(null),
  'fr': () => new Future.value(null),
  'nl': () => new Future.value(null),
  'pt': () => new Future.value(null),

};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'es':
      return messages_es.messages;
    case 'en':
      return messages_en.messages;
    case 'messages':
      return messages_messages.messages;
    case 'de':
      return messages_de.messages;
    case 'fr':
      return messages_fr.messages;
    case 'nl':
      return messages_nl.messages;
    case 'pt':
      return messages_pt.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null);
  if (availableLocale == null) {
    return new Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? new Future.value(false) : lib());
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
