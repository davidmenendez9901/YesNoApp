import 'package:dio/dio.dart';
import 'package:myapp/domain/entities/message.dart';
import 'package:myapp/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  /// Get Yes/No answer from API
  final _dio = Dio();
  final String urlApi = 'https://yesno.wtf/api';
  Future<Message> getAnswer() async {
    /// Get response from API
    final response = await _dio.get(urlApi);

    /// Parse response to YesNoModel
    final yesNoModel = YesNoModel.fromJson(response.data);

    /// Create Message object
    return yesNoModel.toMessageEntity();
  }
}
