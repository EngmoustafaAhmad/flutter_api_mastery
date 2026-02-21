<div dir="rtl">

# 📦 Shared Preferences Service

خدمة تخزين البيانات المحلية البسيطة باستخدام مكتبة shared_preferences في Flutter.

---

## 🎯 الهدف

توفير طبقة تجريد (Abstraction Layer) للتعامل مع التخزين المحلي من نوع Key-Value
مع الحفاظ على Clean Architecture ومنع التعامل المباشر مع المكتبة داخل باقي أجزاء المشروع.

---

## 📌 متى نستخدم Shared Preferences؟

تستخدم لتخزين البيانات البسيطة فقط مثل:

- 🔐 Token
- 🆔 User ID
- 🌙 Dark Mode
- 🚀 First Launch Flag
- 🌍 Language Code
- ⚙️ إعدادات بسيطة

---

## ❌ متى لا تستخدمها؟

لا تستخدم Shared Preferences في الحالات التالية:

- تخزين Objects
- تخزين Lists كبيرة
- تخزين API Responses
- تخزين بيانات Offline معقدة

في هذه الحالات يفضل استخدام Hive.

---

## 📂 Structure


---

## 🧱 Example Service

```dart
class SharedPrefsService {
  final SharedPreferences prefs;

  SharedPrefsService(this.prefs);

  Future<void> saveToken(String token) async {
    await prefs.setString('token', token);
  }

  String? getToken() {
    return prefs.getString('token');
  }

  Future<void> clearToken() async {
    await prefs.remove('token');
  }
}
