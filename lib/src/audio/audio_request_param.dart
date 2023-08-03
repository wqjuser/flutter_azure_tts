import 'package:flutter_azure_tts/src/voices/voices.dart';

class AudioRequestParams {
  final Voice voice;
  final String text;
  final String audioFormat;
  double? rate;
  String? pitch;
  double? volume;
  String? emo;
  double? emoSrc;
  String? rolePlay;

  AudioRequestParams({
    required this.voice,
    required this.text,
    required this.audioFormat,
    this.rate,
    this.pitch,
    this.volume,
    this.emo,
    this.emoSrc,
    this.rolePlay
  });
}
