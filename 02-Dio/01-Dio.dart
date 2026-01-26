import 'package:dio/dio.dart';

class DioClient {
  // إنشاء instance واحدة من Dio علشان نستخدمها في كل التطبيق
  static final Dio dio = Dio(
    BaseOptions(
      // requests الـ (Base URL) لكل  
      baseUrl: 'https://jsonplaceholder.typicode.com',

      // أقصى وقت للاتصال بالسيرفر
      connectTimeout: const Duration(seconds: 5),

      // أقصى وقت لاستقبال البيانات
      receiveTimeout: const Duration(seconds: 5),

      // request افتراضية لكل Headers
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
}
