🗄️ KxP Store SQL Project
1) مقدمة

هذا المشروع قمت بإنشائه للتدريب على SQL.
أنشأت قاعدة بيانات تجريبية باسم KxP_store تحتوي على عدة جداول مثل:

products (المنتجات)

customers (العملاء)

orders (الطلبات)

order_items (تفاصيل الطلبات)

shippers (شركات الشحن)

order_statuses (حالات الطلب)

order_item_notes (ملاحظات على عناصر الطلب)

بعدها نفذت استعلامات عملية للتعلّم، مثل:

البحث عن العملاء حسب العمر أو العنوان.

معرفة الطلبات التي لم تُشحن بعد.

حساب إجمالي قيمة الطلب باستخدام SUM و GROUP BY.

الانضمام (JOIN) بين الجداول لعرض تفاصيل المنتجات مع الطلبات.

ترتيب النتائج واختيار أفضل العملاء بالنقاط.

 English Description

This project was created as part of my SQL practice.
I designed a sample database called KxP_store that includes:

products (product info)

customers (customer data)

orders (customer orders)

order_items (order details)

shippers (shipping companies)

order_statuses (order states)

order_item_notes (extra notes for order items)

I then wrote queries to practice different SQL concepts, such as:

Selecting customers by age or address.

Finding orders that haven’t been shipped yet.

Calculating order totals using SUM and GROUP BY.

Joining multiple tables (JOIN) to display order details with products.

Sorting and filtering data to get the top customers by points.

2) تصميم الجداول
🔑 المفاتيح الأساسية (Primary Keys)

استخدمت أعمدة هوية (IDENTITY) مثل product_id, customer_id, order_id لكي أملك مفتاحًا فريدًا لكل صف — هذا يسهل الربط عبر الجداول.

🔗 العلاقات (Foreign Keys)

جداول مثل orders و order_items مرتبطة بـ customers و products عبر FOREIGN KEY.

هذا بيضمن اتساق البيانات (ما منقدر نحط طلب لعميل غير موجود).

🧩 المفتاح المركب (Composite PK)

جدول order_items له PRIMARY KEY مركب (order_id, product_id) لأن نفس المنتج قد يظهر مرة وحدة فقط في نفس الطلب — هذا بيمنع التكرار

3) أمثلة استعلامات SQL
مثال 1 — عرض عناصر أمر مع بيانات المنتج (JOIN)
SELECT o.order_id,
       oi.product_id,
       p.name AS product_name,
       oi.quantity,
       oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id;
مثال 2 — عملاء ضمن فترة ميلاد معينة
SELECT customer_id, first_name, last_name, birth_date
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-12-31';
مثال 3 — أفضل 3 عملاء بالنقاط (TOP / OFFSET-FETCH)
 SQL Server with OFFSET-FETCH
SELECT customer_id, first_name, last_name, points
FROM customers
ORDER BY points DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;
✅ الخلاصة

هذا المشروع علّمني أساسيات تصميم قاعدة بيانات مع العلاقات الأساسية (PK, FK, Composite PK) وكيفية كتابة استعلامات SQL عملية على بيانات قريبة من الواقع.
قمت برفعه على GitHub ليكون مرجعًا في تعلم SQL.
