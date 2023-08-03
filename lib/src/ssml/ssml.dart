import 'package:flutter_azure_tts/src/voices/voice_model.dart';

class Ssml {
  Ssml({required this.voice, required this.text, required this.speed, this.pitch, this.volume, this.emo, this.emoSrc, this.rolePlay});

  final Voice voice;
  final String text;
  final double speed;
  final String? pitch;
  final double? volume;
  final String? emo;
  final double? emoSrc;
  final String? rolePlay;

  String get buildSsml {
    String ssml = "<speak version='1.0' "
        "xmlns='http://www.w3.org/2001/10/synthesis' "
        "xmlns:mstts='https://www.w3.org/2001/mstts' "
        "xml:lang='${voice.locale}'>"
        "<voice xml:lang='${voice.locale}' "
        "xml:gender='${voice.gender}' "
        "name='${voice.shortName}'>"
        "<mstts:express-as role='$rolePlay' style='$emo' styledegree='$emoSrc'>"
        "<prosody volume='$volume' pitch='$pitch' rate='$speed'>"
        "$text"
        "</prosody>"
        "</mstts:express-as>"
        "</voice></speak>";
    print('tts final text is $ssml');
    return ssml;
  }
}
