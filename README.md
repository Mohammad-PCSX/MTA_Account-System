# سیستم اکانت برای MTA

این پروژه یک **سیستم ثبت‌نام و ورود کاربران** برای سرورهای MTA:SA است که با زبان **Lua** نوشته شده و با استفاده از GUI و دیتابیس MySQL کار می‌کند. این پروژه به صورت کامل در قالب مجموعه‌ای از ویدیوهای آموزشی در کانال یوتیوب [@Mohammad_PCSX](https://www.youtube.com/@Mohammad_PCSX) آموزش داده شده است.

## 🎬 آموزش‌های ویدیویی

1. [پارت 1 - طراحی GUI پنل ورود و ثبت‌نام](https://www.youtube.com/watch?v=JDLhWTItp1o)  
   طراحی رابط گرافیکی برای ورود و ثبت‌نام کاربران با استفاده از GUI در MTA.

2. [پارت 2 - اتصال به دیتابیس و Export](https://www.youtube.com/watch?v=k3FlNkUrY1I)  
   اتصال پروژه به دیتابیس و تعریف Export برای ارتباط بین منابع.

3. [پارت 3 - ارسال و دریافت داده به دیتابیس](https://www.youtube.com/watch?v=D_Zg1m1Z7L8)  
   اتصال GUI به سرور و انجام عملیات `SELECT` و `INSERT` روی دیتابیس.

4. [پارت 4 - ساخت سیستم لاگین و واکشی اطلاعات](https://www.youtube.com/watch?v=jxrBWyr_T_M)  
   ساخت سیستم ورود و دریافت اطلاعات کاربر از دیتابیس (مثل پول و موارد دیگر).

5. [پارت 5 - ذخیره‌سازی اطلاعات هنگام خروج از سرور](https://www.youtube.com/watch?v=FQCq9Ct--XY)  
   ثبت اطلاعات کاربر مثل پول در دیتابیس، زمانی که از سرور خارج می‌شود.

6. [پارت 6 - طراحی نهایی و اضافه کردن نوت و بک‌گراند](https://www.youtube.com/watch?v=1nGrvFGAPrU)  
   بهبود ظاهر پنل، اضافه کردن گرافیک، نوت‌ها و نهایی‌سازی پروژه.

## 🧰 تکنولوژی‌ها

- زبان: Lua
- پلتفرم: Multi Theft Auto (MTA:SA)
- دیتابیس: MySQL
- GUI: توابع داخلی MTA


## 🚀 اجرای پروژه

1. پروژه را در پوشه `resources` قرار دهید.
2. اطلاعات دیتابیس را در `server.lua` تنظیم کنید.
3. از داخل کنسول MTA یا `mtaserver.conf` پروژه را اجرا کنید:

```bash
start mysql
start notices
start MTA_Account-System
```
