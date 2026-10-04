# Mina Maintenance — Windows

نسخة سطح مكتب Windows من نظام Mina Maintenance باستخدام Electron.

## الاسم

- التطبيق: Mina Maintenance
- App ID: `com.infinitymen2.minamaintenance`
- الإصدار: `7.0.1`
- الشركة/الناشر: Infinity MEN2

## الملفات المهمة

- `app/index.html` واجهة النظام.
- `main.js` تشغيل تطبيق Windows وإدارة النافذة والطباعة والروابط الخارجية.
- `preload.js` طبقة آمنة بين الواجهة وElectron.
- `build/Mina-Maintenance.ico` أيقونة Windows.
- `assets/Mina-Maintenance.png` أيقونة الواجهة.
- `package.json` إعدادات المشروع والبناء.
- `build-windows.bat` بناء النسخة على Windows.
- `.github/workflows/build-windows.yml` بناء تلقائي على GitHub Actions.

## تشغيله على Windows

1. ثبّت Node.js.
2. افتح مجلد المشروع.
3. شغّل `run-windows.bat`.

## بناء EXE محليًا

شغّل `build-windows.bat`.

ستجد الناتج داخل مجلد `dist`.

## بناء EXE على GitHub

لا يتم تشغيل ملفات `.bat` داخل GitHub نفسه. البناء التلقائي يتم بواسطة GitHub Actions الموجودة في:

`.github/workflows/build-windows.yml`

بعد رفع الملفات إلى الفرع `main`:

1. افتح تبويب **Actions**.
2. اختر **Build Mina Maintenance for Windows**.
3. افتح آخر تشغيل ناجح.
4. من **Artifacts** نزّل `Mina-Maintenance-Windows`.

ولعمل Release، ادفع Tag مثل `v7.0.1`.
