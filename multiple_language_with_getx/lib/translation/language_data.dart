import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appname': 'Language Switcher',
          'welcome': 'Welcome to a whole new world',
          'message':
              'This is a message that will be changed to different languages...',
          'changelang': 'Change Language'
        },
        'hi_IN': {
          'appname': 'भाषा स्विचर',
          'welcome': 'एक पूरी नई दुनिया में आपका स्वागत है',
          'message': 'यह एक संदेश है जिसे अलग-अलग भाषाओं में बदला जाएगा...',
          'changelang': 'भाषा बदलो'
        },
        'gu_IN': {
          'appname': 'ભાસા બદલનાર',
          'welcome': 'સંપૂર્ણ નવી દુનિયામાં આપનું સ્વાગત છે',
          'message': 'આ એક સંદેશ છે જે વિવિધ ભાષાઓમાં બદલાશે...',
          'changelang': 'ભાષા બદલો'
        }
      };
}
