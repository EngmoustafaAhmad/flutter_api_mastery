import 'package:dio/dio.dart';
import '../dio_setup/dio_setup.dart';

// دالة لإضافة Interceptors على Dio
void addInterceptors() {
  DioClient.dio.interceptors.add(
    InterceptorsWrapper(
      // قبل إرسال الـ Request
      onRequest: (options, handler) {
        print('➡️ REQUEST: ${options.method} ${options.path}');
        return handler.next(options); // يكمل الطلب
      },

      // عند استلام Response بنجاح
      onResponse: (response, handler) {
        print('✅ RESPONSE: ${response.statusCode}');
        return handler.next(response); // يرجّع response
      },

      // عند حدوث Error
      onError: (error, handler) {
        print('❌ ERROR: ${error.message}');
        return handler.next(error); // يرجّع الخطأ
      },
    ),
  );
}
