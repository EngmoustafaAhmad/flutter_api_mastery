import 'package:dio/dio.dart';
import '../dio_setup/dio_setup.dart';

class CancelService {
  // CancelToken للتحكم في إلغاء الطلب
  final CancelToken cancelToken = CancelToken();

  // إرسال request
  Future<void> fetchData() async {
    try {
      await DioClient.dio.get(
        '/posts',
        cancelToken: cancelToken, // ربط الطلب بالـ CancelToken
      );
    } catch (e) {
      // التحقق إذا كان الخطأ بسبب الإلغاء
      if (CancelToken.isCancel(e)) {
        print('🚫 Request canceled');
      } else {
        print('❌ Error occurred');
      }
    }
  }

  // إلغاء الطلب يدويًا
  void cancelRequest() {
    cancelToken.cancel('User canceled the request');
  }
}
