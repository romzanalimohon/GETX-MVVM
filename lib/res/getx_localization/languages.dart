

import 'package:get/get.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'email_hint': 'enter email',
      'internet_exception': "we are unable to show results. \nplease chack your internet. \nconnection",
      'general_exception': "we are unable to process your request. \nplease try again"
    },
    'ur_PK':{
      'email_hint': 'ای میل درج کریں'
    }
  };

}