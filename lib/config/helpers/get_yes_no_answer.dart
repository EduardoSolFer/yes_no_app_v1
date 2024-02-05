import 'package:flutter/material.dart';
import 'package:yes_no_app_v1/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_app_v1/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final dio = Dio();

  Future<Message> getAnswer() async {
    final response = await dio.get('https://yesno.wtf/api');

    // Map<String, dynamic> data = {
    //   'answer': 'yes',
    //   'forced': 'true',
    //   'image': 'https://yesno.wtf/api'
    // };

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
