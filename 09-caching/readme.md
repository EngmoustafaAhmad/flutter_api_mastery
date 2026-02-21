<div dir="rtl">

# 🐝 Hive Local Database

خدمة التخزين المحلي باستخدام Hive داخل مشروع Flutter
مع الالتزام بمبادئ Clean Architecture.

---

## 🎯 الهدف

توفير طبقة تخزين محلية سريعة وخفيفة لتخزين:

- 📦 Objects
- 📚 Lists
- 💾 API Responses
- 🔄 Offline Data
- 👤 User Model
- 📖 Courses / Lessons Data

مع منع استخدام Hive مباشرة داخل الـ UI أو Features.

---

## 🚀 لماذا Hive؟

- ⚡ سريع جدًا (NoSQL)
- 💡 لا يعتمد على SQLite
- 📱 مناسب لتطبيقات Offline
- 🔒 يمكن تشفير البيانات
- 🧩 يدعم TypeAdapters

---

## 📂 Structure


---

## 📦 Boxes Management

يفضل تعريف أسماء الـ Boxes في ملف منفصل:

```dart
class HiveBoxes {
  static const String userBox = 'user_box';
  static const String coursesBox = 'courses_box';
}

