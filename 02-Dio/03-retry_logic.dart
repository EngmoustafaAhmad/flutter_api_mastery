import 'package:dio/dio.dart';
import '../dio_setup/dio_setup.dart';

// دالة GET مع إعادة المحاولة مرة واحدة عند الفشل
Future<Response> getWithRetry(String path) async {
  try {
    // المحاولة الأولى
    return await DioClient.dio.get(path);
  } catch (e) {
    // لو فشل الطلب
    print('🔁 Retrying request...');

    // إعادة المحاولة مرة واحدة
    return await DioClient.dio.get(path);
  }
}
