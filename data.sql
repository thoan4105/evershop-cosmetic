INSERT INTO "public"."admin_user" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'ab31b332-ce79-4549-90c1-563c906fe879', 't', 'hoantc@admin.com', '$2a$10$PWF.EI87hJv/RYMFRMsSRupo46Savf/ZYjHVFlNE5pp4y2S43n21q', 'hoantc', '2025-06-09 07:50:33.315184+07', '2025-06-09 07:50:33.315184+07' );
INSERT INTO "public"."attribute" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '1e40ce23-9f2b-45a7-9f17-acdb1535bad5', 'size', 'Size', 'select', 'f', 't', 0, 't' );
INSERT INTO "public"."attribute" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'a97e2dc8-c13a-4cc2-ba55-e620d39ed6af', 'color', 'Color', 'select', 'f', 't', 0, 't' );
INSERT INTO "public"."attribute" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, '332a40cf-eab4-468f-973f-51ad097a9f8c', 'volume', 'Volume', 'select', 't', 't', 3, 't' );
INSERT INTO "public"."attribute_group" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'bce24768-ab1b-4c8a-b344-764d1839a7dc', 'Default', '2025-06-09 08:03:25.558104+07', '2025-06-09 08:03:25.558104+07' );
INSERT INTO "public"."attribute_group" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '6b448dbb-8792-4549-a142-26b2b934de9f', 'Liquid Cosmetics', '2025-06-11 10:33:16.029554+07', '2025-06-11 10:33:16.029554+07' );
INSERT INTO "public"."attribute_group_link" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 2, 1 );
INSERT INTO "public"."attribute_group_link" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 1, 1 );
INSERT INTO "public"."attribute_group_link" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 5, 3, 2 );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 4, '39605b24-1ec1-42c2-8543-1cbe5a6464eb', 2, 'size', 'XXL' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 5, 'ea0ac218-0b93-4be7-8945-0bbd1fa8b8cb', 2, 'size', 'XL' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 6, 'ab838673-b3e1-4648-8832-71e0f35a551d', 2, 'size', 'SM' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '4c49bcc0-f958-4ea2-8e75-86348ab53e4d', 1, 'color', 'White' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '2b1a4ff1-d02b-41f6-b97a-2dfed4226691', 1, 'color', 'Black' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, 'e0675c49-5dac-4657-984a-d946892a6948', 1, 'color', 'Yellow' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, '7a41d04c-f2e9-4189-9db1-e13c48e6552a', 3, 'volume', '75ml' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 8, 'dbce405c-ffd3-4a2a-9564-ae22418f7149', 3, 'volume', '275ml' );
INSERT INTO "public"."attribute_option" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 9, 'a522b605-a824-4416-8263-920db7c14cdb', 3, 'volume', '425ml' );
INSERT INTO "public"."category" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 'c026262f-a0e3-4e03-8e89-caa8c80b4a84', 't', NULL, 't', NULL, 't', '2025-06-09 08:03:25.558104+07', '2025-06-09 08:03:25.558104+07' );
INSERT INTO "public"."category" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '2d38a143-e8a0-4c05-8211-d4954d086d40', 't', NULL, 't', NULL, 't', '2025-06-09 08:03:25.558104+07', '2025-06-09 08:03:25.558104+07' );
INSERT INTO "public"."category" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, '0caf9e3c-1d07-4ddd-b809-dc9f7dbf77b6', 't', NULL, 't', NULL, 't', '2025-06-09 08:03:25.558104+07', '2025-06-09 08:03:25.558104+07' );
INSERT INTO "public"."category_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 2, 'Da', NULL, '[{"id":"r__92c3de88-9e16-4f28-ae0b-153a88dcd425","size":1,"columns":[{"id":"c__c5d90067-c786-4324-8e24-8e30520ac3d7","size":1,"data":{"time":1750390427513,"blocks":[{"id":"AU89ItzUa7","type":"raw","data":{"html":"Women"}}],"version":"2.31.0-rc.7"}}]}]', '', 'Da', '', 'Da', 'da' );
INSERT INTO "public"."category_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 1, 'Em bé', NULL, '[{"id":"r__4fce8cd7-f931-43dc-8a79-ce10de33dd89","size":1,"columns":[{"id":"c__c5d90067-c786-4324-8e24-8e30520ac3d7","size":1,"data":{"time":1750390456773,"blocks":[{"id":"AU89ItzUa7","type":"raw","data":{"html":"Kids"}}],"version":"2.31.0-rc.7"}}]}]', '', 'Em bé', '', 'Em bé', 'em-be' );
INSERT INTO "public"."category_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, 3, 'Trang điểm', NULL, '[{"id":"r__18357217-3229-48f8-9c20-8a25855292a5","size":1,"columns":[{"id":"c__c5d90067-c786-4324-8e24-8e30520ac3d7","size":1,"data":{"time":1750390475598,"blocks":[{"id":"AU89ItzUa7","type":"raw","data":{"html":"Men"}}],"version":"2.31.0-rc.7"}}]}]', '/assets/catalog/9701/3025/sp2-4.jpg', 'Trang điểm', '', 'Trang điểm', 'trang-diem' );
INSERT INTO "public"."cms_page" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'fc11fe90-a94d-4d9c-83c8-6938017b7fe2', 't', '2025-06-11 07:57:54.328516+07', '2025-06-11 07:57:54.328516+07' );
INSERT INTO "public"."cms_page_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 1, '/about', 'About', '[{"id":"r__437b5908-b4c5-45a7-88f8-450c0131faa4","size":1,"columns":[{"id":"c__25683a0e-c5df-47cb-8ee1-72e10afeb015","size":1,"data":{"time":1749604461850,"blocks":[{"id":"9zVLU1zYek","type":"raw","data":{"html":"<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n  <meta charset=\"UTF-8\">\n  <title>Giới thiệu về Gạo</title>\n</head>\n<body>\n  <div class=\"container\">\n    <h1>Giới thiệu về Gạo</h1>\n    <p>Gạo là một loại lương thực chính trong nhiều nền văn hóa, đặc biệt phổ biến ở các nước châu Á như Việt Nam, Thái Lan, Trung Quốc. Gạo được chế biến từ hạt lúa sau khi thu hoạch và xay xát.</p>\n    <p>Gạo cung cấp năng lượng và dưỡng chất cần thiết cho cơ thể. Có nhiều loại gạo khác nhau như gạo trắng, gạo lứt, gạo nếp, mỗi loại có hương vị và công dụng riêng.</p>\n    <img src=\"https://c.ndtvimg.com/2023-08/brlp7gk_uncooked-rice-or-rice-grains_625x300_18_August_23.jpg\" alt=\"Hình ảnh các loại gạo\">\n    <p><em>Hình ảnh: Gạo trắng và gạo lứt</em></p>\n  </div>\n</body>\n</html>\n"}}],"version":"2.31.0-rc.7"}}]},{"id":"r__9d0bdf68-985d-438b-9816-af8c2450f05e","size":3,"columns":[{"id":"c__3212e99e-4b87-4e32-b0c3-e9d579365298","size":1,"data":{"time":1749604334298,"blocks":[{"id":"vZ_utbHL0z","type":"header","data":{"text":"Mỹ phẩm từ Gạo","level":4}},{"id":"2aaLknUqIN","type":"paragraph","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương."}}],"version":"2.31.0-rc.7"}},{"id":"c__d3569ed6-bc27-4d56-8d66-149a4588c411","size":1,"data":{"time":1749604340233,"blocks":[{"id":"QsblwabMBB","type":"header","data":{"text":"Mỹ phẩm từ Gạo","level":4}},{"id":"mYsAusCJFP","type":"paragraph","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương."}}],"version":"2.31.0-rc.7"}},{"id":"c__bbebc542-df84-46f7-8e46-5ad61f16dc49","size":1,"data":{"time":1749604344095,"blocks":[{"id":"xcNTAkcZQO","type":"header","data":{"text":"Mỹ phẩm từ Gạo","level":4}},{"id":"Vt3a5JgxDi","type":"paragraph","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương."}}],"version":"2.31.0-rc.7"}}]},{"id":"r__0aaebbaf-fb7f-49e9-9524-5668368b5535","size":3,"columns":[{"id":"c__236f0c5a-44d4-4d70-a098-12db11da4c92","size":1,"data":{"time":1749604385280,"blocks":[{"id":"4bVx2AdvbZ","type":"header","data":{"text":"Mỹ phẩm từ Gạo","level":3}},{"id":"niFmYhMb88","type":"paragraph","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương."}}],"version":"2.31.0-rc.7"}},{"id":"c__31c65bc8-e5e6-4401-b4bf-31d61546a8c9","size":2,"data":{"time":1749604472414,"blocks":[{"id":"mP6mo7Mr-W","type":"header","data":{"text":"Mỹ phẩm từ Gạo","level":3}},{"id":"6s8dxDjrzo","type":"paragraph","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương."}},{"id":"9dzyrAP09A","type":"quote","data":{"text":"Mỹ phẩm từ gạo là dòng sản phẩm làm đẹp được chiết xuất từ cám gạo, tinh chất gạo và các dưỡng chất thiên nhiên. Gạo chứa nhiều vitamin B, E và khoáng chất có khả năng nuôi dưỡng làn da, làm sáng da, chống lão hóa và hỗ trợ phục hồi da tổn thương.","caption":"Gạo chứa nhiều vitamin B, E","alignment":"left"}}],"version":"2.31.0-rc.7"}}]}]', 'Introduce about rice', '', '' );
INSERT INTO "public"."collection" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'b117ecbc-ae76-4d53-b726-58e735c52bdb', 'Sản phẩm nổi bật', '[]', 'homepage', '2025-06-09 08:03:28.243107+07', '2025-06-09 08:03:28.243107+07' );
INSERT INTO "public"."product" OVERRIDING SYSTEM 
VALUE
VALUES
  (
    12,
    '2cedfd0a-78d8-4ab1-943a-b849c5e4825b',
    'simple',
    2,
    't',
    2,
    'DHER2891',
    187000.0000,
    250.0000,
    NULL,
    't',
    '2025-06-20 10:30:47.40489+07',
    '2025-06-20 10:30:47.40489+07',
    3 
  );
INSERT INTO "public"."product" OVERRIDING SYSTEM 
VALUE
VALUES
  (
    11,
    '4e681c7e-c175-426d-bfbe-5c3f3fe5b6fb',
    'simple',
    2,
    't',
    2,
    'DHER2890',
    187000.0000,
    250.0000,
    NULL,
    't',
    '2025-06-20 10:30:15.037556+07',
    '2025-06-20 10:30:15.037556+07',
    3 
  );
INSERT INTO "public"."product" OVERRIDING SYSTEM 
VALUE
VALUES
  (
    10,
    '5eb46ac0-7664-4799-8497-c1bd7d249498',
    'simple',
    NULL,
    't',
    2,
    'DHER2889',
    125000.0000,
    150.0000,
    1,
    't',
    '2025-06-20 10:24:31.874903+07',
    '2025-06-20 10:24:31.874903+07',
    3 
  );
INSERT INTO "public"."product_attribute_value_index" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 21, 12, 3, 7, '75ml' );
INSERT INTO "public"."product_attribute_value_index" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 22, 11, 3, 8, '275ml' );
INSERT INTO "public"."product_attribute_value_index" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 23, 10, 3, 8, '275ml' );
INSERT INTO "public"."product_collection" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 5, 1, 10 );
INSERT INTO "public"."product_collection" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 6, 1, 12 );
INSERT INTO "public"."product_collection" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, 1, 11 );
INSERT INTO "public"."product_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 11, 11, 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', '[{"id":"r__424ffca7-3e90-432d-8869-33f02f3bdded","size":1,"columns":[{"id":"c__08ad5905-716f-4e35-92eb-7325a5619772","size":1,"data":{"time":1750390145776,"blocks":[{"id":"jpSJaGW8Oh","type":"header","data":{"text":"Đặc điểm nổi bật","level":2}},{"id":"vb__dTSDtb","type":"list","data":{"style":"unordered","items":["Dưỡng ẩm và làm mềm da: Sản phẩm là sự kết hợp của tinh dầu hạt cải, dầu cọ và squalane ngăn ngừa mất nước qua biểu bì, phục hồi sự mềm mại của da, cung cấp các dưỡng chất cho da.&nbsp;","Các hoạt chất dưỡng ẩm: Bên cạnh đó thì kem trang điểm Thủy Tinh còn chứa các hoạt chất dưỡng ẩm như Ricinus Communis Seed Oil, Sorbitan Olivate, Sodium Hyaluronate, Caproic Acid. Giups dưỡng ẩm và kéo dài lớp trang điểm","Nhũ bắt sáng: Kem trang điểm còn bổ sung nhũ bắt sáng, giúp lớp trang điểm trông tự nhiên và đẹp hơn."]}},{"id":"lsisJZpqNl","type":"header","data":{"text":"Công dụng","level":2}},{"id":"wOKZ9LSIbN","type":"paragraph","data":{"text":"Kem trang điểm Thủy Tinh nằm trong bộ trang điểm Thủy Tinh của nhà Cỏ có công dụng trang điểm đa năng cho Má - Mắt - Môi. Bên cạnh đó sản phẩm còn giúp tạo màu sắc và cung cấp độ ẩm, dưỡng chất cho da và môi."}},{"id":"sEj0QEs9GB","type":"paragraph","data":{"text":"Kem trang điểm Thủy Tinh bao gồm có 3 tone màu đó là Hồng nhũ, Hồng Ngọt, Cam đào, phù hợp với mọi loại da và môi nhạy cảm, giúp cho các nàng thử trang điểm với nhiều tone make khác nhau."}}],"version":"2.31.0-rc.7"}}]}]', NULL, 'DHER2890', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi' );
INSERT INTO "public"."product_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 12, 12, 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', '[{"id":"r__424ffca7-3e90-432d-8869-33f02f3bdded","size":1,"columns":[{"id":"c__08ad5905-716f-4e35-92eb-7325a5619772","size":1,"data":{"time":1750390145776,"blocks":[{"id":"jpSJaGW8Oh","type":"header","data":{"text":"Đặc điểm nổi bật","level":2}},{"id":"vb__dTSDtb","type":"list","data":{"style":"unordered","items":["Dưỡng ẩm và làm mềm da: Sản phẩm là sự kết hợp của tinh dầu hạt cải, dầu cọ và squalane ngăn ngừa mất nước qua biểu bì, phục hồi sự mềm mại của da, cung cấp các dưỡng chất cho da.&nbsp;","Các hoạt chất dưỡng ẩm: Bên cạnh đó thì kem trang điểm Thủy Tinh còn chứa các hoạt chất dưỡng ẩm như Ricinus Communis Seed Oil, Sorbitan Olivate, Sodium Hyaluronate, Caproic Acid. Giups dưỡng ẩm và kéo dài lớp trang điểm","Nhũ bắt sáng: Kem trang điểm còn bổ sung nhũ bắt sáng, giúp lớp trang điểm trông tự nhiên và đẹp hơn."]}},{"id":"lsisJZpqNl","type":"header","data":{"text":"Công dụng","level":2}},{"id":"wOKZ9LSIbN","type":"paragraph","data":{"text":"Kem trang điểm Thủy Tinh nằm trong bộ trang điểm Thủy Tinh của nhà Cỏ có công dụng trang điểm đa năng cho Má - Mắt - Môi. Bên cạnh đó sản phẩm còn giúp tạo màu sắc và cung cấp độ ẩm, dưỡng chất cho da và môi."}},{"id":"sEj0QEs9GB","type":"paragraph","data":{"text":"Kem trang điểm Thủy Tinh bao gồm có 3 tone màu đó là Hồng nhũ, Hồng Ngọt, Cam đào, phù hợp với mọi loại da và môi nhạy cảm, giúp cho các nàng thử trang điểm với nhiều tone make khác nhau."}}],"version":"2.31.0-rc.7"}}]}]', NULL, 'DHER2890-DHER2891', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi', 'Kem Trang Điểm Thuỷ Tinh 3in1 Tích Hợp Phấn Má Phấn Mắt Son Môi' );
INSERT INTO "public"."product_description" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 10, 10, 'Xịt khoáng cấp ẩm Dr HER Paris 150ML', '[{"id":"r__298017f2-142a-4bb2-99d5-a1b82d2ea6d5","size":1,"columns":[{"id":"c__93f8b6a2-a8c9-408a-87b8-98fa75f95a48","size":1,"data":{"time":1750389806509,"blocks":[{"id":"1fnUf0-Rsu","type":"paragraph","data":{"text":"Kích thước:&nbsp;Rộng 50 mm - &nbsp;Dài 50 mm - Cao 190 mmMô tả sản phẩm:&nbsp;"}},{"id":"kIt76WqkDI","type":"paragraph","data":{"text":"&nbsp;"}},{"id":"aBw1KYgeS-","type":"paragraph","data":{"text":"Xịt khoáng cấp ẩm Dr HER Paris xuất xứ từ Pháp với điểm nổi bật là công nghệ đầu xịt Nano mới nhất năm 2020, tạo ra các tia sương khoáng nhỏ liti chứa Nitrogen siêu mát lạnh, giúp cấp ẩm tức thì, mang đến cho bạn làn da tươi mới, tràn đầy sức sống."}},{"id":"hG86tuHFNn","type":"paragraph","data":{"text":"&nbsp;"}},{"id":"fHEhaMXchw","type":"paragraph","data":{"text":"Xịt khoáng cấp ẩm Dr HER Paris với thành phần 100% từ thiên nhiên kết hợp cùng công nghệ sản xuất đạt chuẩn Châu Âu đang trở thành sản phẩm chăm sóc da lý tưởng, không thể thiếu của phái đẹp hiện nay."}},{"id":"7T_zPvsUin","type":"paragraph","data":{"text":"&nbsp;"}},{"id":"0xV-5RWMZY","type":"paragraph","data":{"text":"Đối tượng sử dụng: Sản phẩm dùng được cho mọi loại da."}},{"id":"d5UQThf-tk","type":"paragraph","data":{"text":"&nbsp;"}},{"id":"lk_Jhs_BJo","type":"paragraph","data":{"text":"Thành phần: Aqua, Nitrogen"}}],"version":"2.31.0-rc.7"}}]}]', NULL, 'DHER2889', 'Xịt khoáng cấp ẩm Dr HER Paris 150ML', 'Xịt khoáng cấp ẩm Dr HER Paris 150ML', 'Xịt khoáng cấp ẩm Dr HER Paris 150ML' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 9, 11, '/assets/catalog/6058/6530/sp-2-1.webp', '/assets/catalog/6058/6530/sp-2-1-thumb.webp', '/assets/catalog/6058/6530/sp-2-1-listing.webp', '/assets/catalog/6058/6530/sp-2-1-single.webp', 't' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 10, 11, '/assets/catalog/3677/4254/sp-2-2.webp', '/assets/catalog/3677/4254/sp-2-2-thumb.webp', '/assets/catalog/3677/4254/sp-2-2-listing.webp', '/assets/catalog/3677/4254/sp-2-2-single.webp', 'f' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 11, 11, '/assets/catalog/5464/2914/sp-2-3.webp', '/assets/catalog/5464/2914/sp-2-3-thumb.webp', '/assets/catalog/5464/2914/sp-2-3-listing.webp', '/assets/catalog/5464/2914/sp-2-3-single.webp', 'f' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 12, 12, '/assets/catalog/8256/4659/sp-2-4.webp', '/assets/catalog/8256/4659/sp-2-4-thumb.webp', '/assets/catalog/8256/4659/sp-2-4-listing.webp', '/assets/catalog/8256/4659/sp-2-4-single.webp', 't' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, 10, '/assets/catalog/1041/7713/sp-1-1.jpeg', '/assets/catalog/1041/7713/sp-1-1-thumb.jpeg', '/assets/catalog/1041/7713/sp-1-1-listing.jpeg', '/assets/catalog/1041/7713/sp-1-1-single.jpeg', 't' );
INSERT INTO "public"."product_image" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 8, 10, '/assets/catalog/7423/1112/sp-1-2.png', '/assets/catalog/7423/1112/sp-1-2-thumb.png', '/assets/catalog/7423/1112/sp-1-2-listing.png', '/assets/catalog/7423/1112/sp-1-2-single.png', 'f' );
INSERT INTO "public"."product_inventory" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 9, 11, 6, 't', 't' );
INSERT INTO "public"."product_inventory" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 10, 12, 0, 't', 't' );
INSERT INTO "public"."product_inventory" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 8, 10, 16, 't', 't' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 15, '1aca69df-3832-420d-97a6-036972baa126', 'storeName', '@hoantc', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 16, '02508a96-bae1-4058-8a53-f9a708aeed63', 'storeDescription', '@hoantc so handsome ♥', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 17, 'de951b9a-79b1-4907-abc8-8a9516f0bc13', 'storePhoneNumber', '0369953662', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 18, '53736bf5-53b0-41c7-9c34-fff96dae2f84', 'storeEmail', 'hoantc@contact.com', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 19, '16f495e3-9d97-4737-984a-4028e580a9e3', 'storeCountry', 'VN', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 20, '1bccb8a9-8938-4e0c-8593-38751e08eae0', 'storeAddress', 'Mỹ Đình', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 21, '1b401b05-411d-48b9-9999-111e78781864', 'storeCity', 'Nam Từ Liêm', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 22, 'ab3fd4ce-805e-4649-b7d7-43f6937b2d01', 'storeProvince', 'VN-HN', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 23, '1ffe0768-2d39-4e67-a6e9-302e55f61bd6', 'storePostalCode', '420000', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'bff19e90-0800-467a-a7c9-fb0b27317677', 'stripePaymentStatus', '0', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '46fac3e3-bc3e-4d40-972c-660d47409ac7', 'stripeDislayName', 'Credit Card', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, '60e6c5c0-cc6e-439e-8474-5bea540d20fc', 'stripePublishableKey', 'pk_test_51RbuiG4D9nmwfwN7oUwIdfsInUSrsvXHop77xJ5T8sAelKcy2645fNFRARlg2qpgzpctvgmTf7IB7BXwYvzZpojl00mNAq3Cu1', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 4, 'ffc51428-c5d5-4c4c-b86d-7cae2e88ed88', 'stripeSecretKey', '', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 5, 'be81d545-c8e7-453a-aa79-6dc08a5b4bf7', 'stripeEndpointSecret', '', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 6, 'ee1a5f57-2f99-4c40-b185-d456faaa7541', 'stripePaymentMode', 'capture', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, '603e6bcb-eb6b-4e82-afe2-4af732a44e2b', 'paypalPaymentStatus', '0', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 8, 'fd1cc33a-7a64-4388-a039-0b774380f386', 'paypalDislayName', 'Paypal', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 9, '7689642d-e8bf-4cb4-93fb-036727bec5c8', 'paypalClientId', '', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 10, 'baa39e40-2051-432a-8904-a87afd57ad90', 'paypalClientSecret', '', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 11, 'e7655b59-fb72-462e-8ef8-580fa788288a', 'paypalEnvironment', 'https://api-m.sandbox.paypal.com', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 12, '373407b2-1997-4fde-8909-8845cb0a662e', 'paypalPaymentIntent', 'CAPTURE', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 13, '809093ed-e50d-41f3-9207-d5ed2dc11214', 'codPaymentStatus', '1', 'f' );
INSERT INTO "public"."setting" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 14, '1cb51359-f8a7-474a-9e08-beb05181c9fb', 'codDislayName', 'Cash On Delivery', 'f' );
INSERT INTO "public"."shipment" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '1d8511d2-8b7b-4e05-9f8a-c94cd5e4c668', 1, NULL, NULL, '2025-06-20 14:07:08.415168+07', '2025-06-20 14:07:08.415168+07' );
INSERT INTO "public"."shipment" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '04ce0837-5778-49c0-91d9-3e061b18be28', 26, 'ups', '423423', '2025-06-25 10:11:11.055989+07', '2025-06-25 10:11:11.055989+07' );
INSERT INTO "public"."shipping_method" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '41062d6b-663d-478a-a21e-6b035800f304', 'ViettelPost' );
INSERT INTO "public"."shipping_zone" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '250eb58e-8a9f-434c-ae8e-214d12e3ad24', 'Free', 'VN' );
INSERT INTO "public"."shipping_zone_method" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 1, 1, 't', 30000.0000, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 'f1c257a2-8a0f-4fa0-9893-acf9c3b6ddb3', 1, 'VN-44' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, '3e5b80e6-f999-4d5d-9ee5-3819fbcc659b', 1, 'VN-54' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 4, 'afd59d7b-6054-49c5-8b43-d3d88a691539', 1, 'VN-53' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 5, '5f7cc6e4-5cbb-4eac-882a-5d0fdfbb7454', 1, 'VN-55' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 6, 'b310b08a-080e-4955-9596-db3d552fa43a', 1, 'VN-56' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, '40c7d31f-5076-45db-8627-198288be9338', 1, 'VN-50' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 8, '62fbcf6a-adf4-4b7e-ad25-16e421b5c6e4', 1, 'VN-31' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 9, 'bb0b6a21-cc71-446b-b1f3-e9f398dd221c', 1, 'VN-57' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 10, 'f96fe063-c3a3-4220-b26b-bc5ed9d088e7', 1, 'VN-58' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 11, 'e0d3ff5b-2056-44bc-b2d7-5a2178e98de7', 1, 'VN-40' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 12, 'a9ef3104-8d52-41ab-b0e8-1de2ada4ae2c', 1, 'VN-59' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 13, '472bde65-574b-4ed3-a9e2-b546a6e64ac5', 1, 'VN-CT' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 14, '9e036893-b555-4b35-a2bb-5ea1bb54d5b9', 1, 'VN-04' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 15, 'e6a79fc7-3d77-41a8-9293-afd947fa1e9f', 1, 'VN-DN' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 16, '53590368-7758-4d31-9e0e-a34e294b29ff', 1, 'VN-33' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 17, '94c4394c-54cd-4809-bfea-a818040a9908', 1, 'VN-71' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 18, '33ff0dd2-25e2-4035-bc8b-157ccd302238', 1, 'VN-39' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 19, '59a78b17-1b71-482a-9075-06c576e524a7', 1, 'VN-45' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 20, '7153685f-454c-43ae-9f20-b094827b09b3', 1, 'VN-30' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 21, '0f6ee5c6-c194-4c95-bda0-01a336a02cc4', 1, 'VN-03' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 22, '0e2ee0ba-5bc5-4110-9f92-9854ed14e31d', 1, 'VN-63' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '83b45274-80dd-4590-b7e0-51a09356933b', 1, 'VN-HN' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 24, '672e6b3d-cce5-47b7-be24-2af1391028be', 1, 'VN-23' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 25, '8915040d-4157-4eaa-b3e8-ef6f4f5b419d', 1, 'VN-61' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 26, '947834b1-b522-4534-98c1-c6ee6c3b23bf', 1, 'VN-HP' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 27, '54d206c3-53d0-409d-a165-c9f3685820e8', 1, 'VN-SG' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 28, '3496a6f6-98dc-4032-b787-dfafae32b157', 1, 'VN-14' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 29, 'b1f1f75f-f29e-4b37-9993-86ce5955d65d', 1, 'VN-66' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 30, '2496e2b1-0b33-40fd-8ad7-a1ad70ec5394', 1, 'VN-34' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 31, '4c9ff821-9bb7-41db-bd28-6238c85024a8', 1, 'VN-47' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 32, 'c278bccc-de45-4866-8f2e-0207daffd831', 1, 'VN-01' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 33, '76672a65-4894-4fd4-90e5-00c58ddd6807', 1, 'VN-35' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 34, 'ed921b5d-3b21-49ba-8fdb-18b40a0ca703', 1, 'VN-09' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 35, '62527cec-a2da-422e-9f1d-7a1112bf9000', 1, 'VN-02' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 36, 'c047a429-6a8b-484f-8e21-6f779f525740', 1, 'VN-41' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 37, 'b028cebb-4482-4fc8-9aee-a8a1246f9ee6', 1, 'VN-67' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 38, '62a716d7-5c31-4c23-9533-bf0edc333108', 1, 'VN-22' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 39, '2968725e-d609-4263-8c1e-f06789ffcb00', 1, 'VN-18' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 40, 'a822879a-78e6-4cb8-b793-0eca8564ef55', 1, 'VN-36' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 41, 'ee0d1e6d-8695-4211-b5ae-38c37f470597', 1, 'VN-68' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 42, '737df413-3c29-4f80-a936-7fdffeba126c', 1, 'VN-32' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 43, 'a093e1fc-20e4-4dea-9378-3ebe6dce07c4', 1, 'VN-24' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 44, 'b9e4defe-9cea-487e-acd5-dfd3f467d681', 1, 'VN-27' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 45, 'bed47dab-ca74-44ab-be4a-5aca7c5cf040', 1, 'VN-29' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 46, 'de6f897c-7adc-4dc3-a948-edf41270aeb3', 1, 'VN-13' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 47, 'af55b422-9b24-4292-a324-7ca3d92474b9', 1, 'VN-25' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 48, '5a8b2e94-0cf4-4e39-8679-13eeb9b26de9', 1, 'VN-52' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 49, '482b43e6-2894-4d5c-9d70-b4788453b1d0', 1, 'VN-05' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 50, '403f67cb-4ef2-4778-b33f-89740c12f91a', 1, 'VN-37' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 51, '43a01b3a-4ce4-4272-b596-c7e70685c85b', 1, 'VN-20' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 52, 'a1e2b556-4a59-4eee-aafc-3cc6a5c737c5', 1, 'VN-69' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 53, '8ef17393-ee96-4eca-b784-d2f627409f6f', 1, 'VN-21' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 54, 'fae64f72-cddd-4673-83eb-d470ef6d9205', 1, 'VN-26' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 55, '9e6488c3-3f30-4b99-8a30-bb1cdd459fe7', 1, 'VN-46' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 56, 'fd2a3f23-ac5a-4266-97a2-bf3144c40fbf', 1, 'VN-51' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 57, 'c0fb7c0e-6703-4ad5-a3ec-f7ce3d60d8d7', 1, 'VN-07' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 58, 'c5e513a2-eb88-4e47-b3c1-6228fc9986fd', 1, 'VN-49' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 59, '1ba0b86f-2f09-4b02-91f2-53abdfec8363', 1, 'VN-70' );
INSERT INTO "public"."shipping_zone_province" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 60, '9f6ab0af-f452-437f-83cc-e27ec3d35e07', 1, 'VN-06' );
INSERT INTO "public"."tax_class" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '0fe9df22-6b46-4d50-9ea8-f34489e3d61e', 'Taxable Goods' );
INSERT INTO "public"."tax_rate" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'b4da2446-7480-42f2-8bf8-f0fa83c6f3ed', 'Tax', 1, '*', '*', '*', 1.5000, 'f', 0 );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 7, 'en', '/trang-diem', '/category/0caf9e3c-1d07-4ddd-b809-dc9f7dbf77b6', '0caf9e3c-1d07-4ddd-b809-dc9f7dbf77b6', 'category' );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'en', '/em-be', '/category/2d38a143-e8a0-4c05-8211-d4954d086d40', '2d38a143-e8a0-4c05-8211-d4954d086d40', 'category' );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 'en', '/da', '/category/c026262f-a0e3-4e03-8e89-caa8c80b4a84', 'c026262f-a0e3-4e03-8e89-caa8c80b4a84', 'category' );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 39, 'en', '/trang-diem/DHER2890-DHER2891', '/product/2cedfd0a-78d8-4ab1-943a-b849c5e4825b', '2cedfd0a-78d8-4ab1-943a-b849c5e4825b', 'product' );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 37, 'en', '/trang-diem/DHER2890', '/product/4e681c7e-c175-426d-bfbe-5c3f3fe5b6fb', '4e681c7e-c175-426d-bfbe-5c3f3fe5b6fb', 'product' );
INSERT INTO "public"."url_rewrite" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 35, 'en', '/trang-diem/DHER2889', '/product/5eb46ac0-7664-4799-8497-c1bd7d249498', '5eb46ac0-7664-4799-8497-c1bd7d249498', 'product' );
INSERT INTO "public"."variant_group" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, 'c3c394cf-38a9-40eb-9c4a-3bc0f4e3770a', 1, 1, 2, NULL, NULL, NULL, 't' );
INSERT INTO "public"."variant_group" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, '9386dacc-1989-40bb-8134-166ad26918c3', 2, 3, NULL, NULL, NULL, NULL, 't' );
INSERT INTO "public"."widget" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 4, '02032e43-acd4-426a-b6f7-5fda215b2e7f', 'Main banner', 'text_block', '["homepage"]', '["content"]', 5, '{"text": "[{\"id\":\"r__63dcb2ab-c2a4-40fc-a995-105bf1484b06\",\"size\":1,\"columns\":[{\"id\":\"c__354832f1-6fe1-4845-8cbb-7e094082810e\",\"size\":1,\"data\":{\"time\":1749603339786,\"blocks\":[{\"id\":\"KRtRWBBVvm\",\"type\":\"raw\",\"data\":{\"html\":\"&lt;div style=\\\"height: 500px; margin-top: -3rem; background: linear-gradient(135deg, #aad3ff, #0056b3); display: flex; align-items: center; justify-content: center;\\\"&gt;\\n  &lt;div style=\\\"display: flex; align-items: center; max-width: 1200px; width: 100%; padding: 0 20px;\\\"&gt;\\n    &lt;div style=\\\"flex: 1; text-align: center;\\\"&gt;\\n      &lt;svg width=\\\"300\\\" height=\\\"300\\\" viewBox=\\\"0 0 128 146\\\" fill=\\\"none\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\" style=\\\"fill: #0056b3; color: #0056b3;\\\"&gt;\\n        &lt;path d=\\\"M32.388 18.0772L1.15175 36.1544L1.05206 72.5081L0.985596 108.895L32.4213 127.039C49.7009 137.008 63.9567 145.182 64.1228 145.182C64.289 145.182 72.8956 140.264 83.2966 134.283C93.6644 128.268 107.82 120.127 114.732 116.139L127.26 108.895V101.119V93.3102L126.529 93.7089C126.097 93.9415 111.941 102.083 95.06 111.853C78.1459 121.622 64.156 129.531 63.9567 129.498C63.724 129.431 52.5587 123.051 39.1005 115.275L14.6099 101.152V72.5746V43.9967L25.6756 37.6165C31.7234 34.1274 42.8223 27.7472 50.2991 23.4273C57.7426 19.1073 63.9899 15.585 64.1228 15.585C64.2557 15.585 72.9288 20.5362 83.3963 26.5841L113.902 43.9967L118.713 41.1657L127.26 36.1544L113.902 28.5447C103.334 22.2974 64.3554 -0.033191 64.0231 3.90721e-05C63.8237 3.90721e-05 49.568 8.14142 32.388 18.0772Z\\\" fill=\\\"#0056b3\\\"&gt;&lt;/path&gt;\\n        &lt;path d=\\\"M96.0237 54.1983C78.9434 64.0677 64.721 72.2423 64.4219 72.3088C64.0896 72.4084 55.7488 67.7562 44.8826 61.509L25.9082 50.543V58.4186L25.9414 66.2609L44.3841 76.8945C54.5193 82.743 63.1591 87.6611 63.5911 87.8272C64.2557 88.0598 68.9079 85.5011 95.5585 70.1156C112.705 60.1798 126.861 51.9719 127.027 51.839C127.16 51.7061 127.227 48.1505 127.194 43.9302L127.094 36.2541L96.0237 54.1983Z\\\" fill=\\\"#0056b3\\\"&gt;&lt;/path&gt;\\n        &lt;path d=\\\"M123.771 66.7261C121.943 67.7562 107.854 75.8976 92.4349 84.8033C77.0161 93.7089 64.289 100.986 64.1228 100.986C63.9567 100.986 55.3501 96.0683 44.9491 90.0869L26.0744 79.1874L25.9747 86.8303C25.9082 92.6788 26.0079 94.5729 26.307 94.872C26.9383 95.4369 63.7241 116.604 64.1228 116.604C64.4551 116.604 126.496 80.8821 127.027 80.4169C127.16 80.284 127.227 76.7284 127.194 72.4749L127.094 64.7987L123.771 66.7261Z\\\" fill=\\\"#0056b3\\\"&gt;&lt;/path&gt;\\n      &lt;/svg&gt;\\n    &lt;/div&gt;\\n    \\n    &lt;div style=\\\"flex: 1; text-align: left; padding: 20px;\\\"&gt;\\n      <h1 style=\\\"font-size: 3.5rem; color: #fff;\\\">Your Heading Here</h1>\\n      &lt;p style=\\\"font-size: 1.5rem; color: #fff; margin: 20px 0;\\\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultricies sodales mi, at ornare elit semper ac.&lt;/p&gt;\\n      &lt;a href=\\\"#\\\" style=\\\"display: inline-block; padding: 10px 20px; background-color: #fff; color: #0056b3; text-decoration: none; border-radius: 5px; font-weight: bold;\\\"&gt;SHOP NOW&lt;/a&gt;\\n    &lt;/div&gt;\\n  &lt;/div&gt;\\n&lt;/div&gt;\\n\"}}],\"version\":\"2.31.0-rc.7\"}}]}]", "className": ""}', 't', '2025-06-09 08:03:30.464293+07', '2025-06-09 08:03:30.464293+07' );
INSERT INTO "public"."widget" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 3, '3760f7e7-189b-4048-be18-d494ee57e0d1', 'Featured Products', 'collection_products', '["homepage"]', '["content"]', 20, '{"count": 20, "collection": "homepage"}', 't', '2025-06-09 08:03:30.464293+07', '2025-06-09 08:03:30.464293+07' );
INSERT INTO "public"."widget" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 1, '61017221-e0fc-4f2a-b127-9e20c769aedd', 'Main menu', 'basic_menu', '["all"]', '["header"]', 1, '{"menus": [{"id": "1x5k1rbb9omc49c9v3", "url": "javascript:void(0)", "name": "Cửa hàng", "type": "custom", "uuid": "javascript:void(0)", "children": [{"id": "1x5k1rbb9omc49c9v4", "url": "/men", "name": "Trang điểm", "type": "category", "uuid": "0caf9e3c-1d07-4ddd-b809-dc9f7dbf77b6", "label": "Trang điểm"}, {"id": "1x5k1rbb9omc49c9v5", "url": "/women", "name": "Da", "type": "category", "uuid": "c026262f-a0e3-4e03-8e89-caa8c80b4a84", "label": "Da"}, {"id": "mc49d03r", "name": "Em bé", "type": "category", "uuid": "2d38a143-e8a0-4c05-8211-d4954d086d40", "label": "Em bé"}]}, {"id": "1x5k1rbb9omc49c9v6", "url": "/page/about-us", "name": "Về chúng tôi", "type": "page", "uuid": "fc11fe90-a94d-4d9c-83c8-6938017b7fe2", "label": "About", "children": []}, {"id": "mc49dev2", "name": "Giới thiệu", "type": "page", "uuid": "fc11fe90-a94d-4d9c-83c8-6938017b7fe2", "label": "About", "children": []}], "isMain": "1", "className": ""}', 't', '2025-06-09 08:03:30.464293+07', '2025-06-09 08:03:30.464293+07' );
INSERT INTO "public"."widget" OVERRIDING SYSTEM 
VALUE
VALUES
  ( 2, 'bfb92936-5910-4c6c-b191-4581311a5a02', 'Featured categories', 'text_block', '["homepage"]', '["content"]', 10, '{"text": "[{\"id\":\"r__c13ffd49-f39e-40d7-8d67-d345c0a018c1\",\"size\":3,\"columns\":[{\"id\":\"c__6dffc7a4-4378-4247-8ffd-07d956ce4939\",\"size\":1,\"data\":{\"time\":1749603326223,\"blocks\":[{\"id\":\"PjJh9eW0O7\",\"type\":\"header\",\"data\":{\"text\":\"Kids shoes collection\",\"level\":3}},{\"id\":\"CHsT6VaRCw\",\"type\":\"paragraph\",\"data\":{\"text\":\"Constructed from luxury nylons, leathers, and custom hardware, featuring sport details such as hidden breathing vents, waterproof + antimicrobial linings, and more.\"}},{\"id\":\"-0lRctONo9\",\"type\":\"raw\",\"data\":{\"html\":\"&lt;a href=\\\"/kids\\\" class=\\\"button primary\\\"&gt;&lt;span&gt;Shop kids&lt;/span&gt;&lt;/a&gt;\"}}],\"version\":\"2.31.0-rc.7\"}},{\"id\":\"c__ca76b2e3-65e3-4eb3-83cb-7ffdfba41208\",\"size\":1,\"data\":{\"time\":1749603326236,\"blocks\":[{\"id\":\"2K_v3fp7Dd\",\"type\":\"header\",\"data\":{\"text\":\"Women shoes collection\",\"level\":3}},{\"id\":\"XiPHWtWbZm\",\"type\":\"paragraph\",\"data\":{\"text\":\"Constructed from luxury nylons, leathers, and custom hardware, featuring sport details such as hidden breathing vents, waterproof + antimicrobial linings, and more.\"}},{\"id\":\"f9KXlEkYmu\",\"type\":\"raw\",\"data\":{\"html\":\"&lt;a href=\\\"/women\\\" class=\\\"button primary\\\"&gt;&lt;span&gt;Shop women&lt;/span&gt;&lt;/a&gt;\"}}],\"version\":\"2.31.0-rc.7\"}},{\"id\":\"c__2872ebd9-7f79-442b-bade-6c19d74220ef\",\"size\":1,\"data\":{\"time\":1749603326237,\"blocks\":[{\"id\":\"mxTqYRjSTw\",\"type\":\"header\",\"data\":{\"text\":\"Men shoes collection\",\"level\":3}},{\"id\":\"p-frIk8CU-\",\"type\":\"paragraph\",\"data\":{\"text\":\"Constructed from luxury nylons, leathers, and custom hardware, featuring sport details such as hidden breathing vents, waterproof + antimicrobial linings, and more.\"}},{\"id\":\"AoCaoHwyWd\",\"type\":\"raw\",\"data\":{\"html\":\"&lt;a href=\\\"/men\\\" class=\\\"button primary\\\"&gt;&lt;span&gt;Shop men&lt;/span&gt;&lt;/a&gt;\"}}],\"version\":\"2.31.0-rc.7\"}}]}]", "className": "page-width"}', 't', '2025-06-09 08:03:30.464293+07', '2025-06-09 08:03:30.464293+07' );