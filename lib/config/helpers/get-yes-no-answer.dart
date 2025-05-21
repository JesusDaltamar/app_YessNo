import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure.dart/models/yes_no_model.dart';

class GetYesNoAnswer {
  //vamos a hacer una peticion HTTO para traer la respuesta
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
