# BÀI LÀM – HACKATHON 01

- **Mã đề:** 17
- **Họ tên:Nguyễn Thái Hoàng** 
- **Lớp:CNTT3** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Force
mv .\nguon_hang.txt .\docs\
mv .\logo_trai_cay_sach.png .\media\
cp .\media\logo_trai_cay_sach.png .\backup\
rm .\temp_252.tmp
cd .\logs\
ls
cd ..
Get-ChildItem -r -Force

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: D:\starter-kit\starter-kit\trai-cay-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026  10:52 AM                backup
d-----        10/28/2026  10:47 AM                data
d-----        10/28/2026  10:49 AM                docs
d-----        10/28/2026  10:47 AM                logs
d-----        10/28/2026  10:50 AM                media
-a----        10/27/2026   1:32 AM             70 .env
-a----        10/27/2026   1:32 AM           2228 bai_lam.md


    Directory: D:\starter-kit\starter-kit\trai-cay-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           7054 logo_trai_cay_sach.png


    Directory: D:\starter-kit\starter-kit\trai-cay-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6095 ban_trai_cay_thang_7.xlsx


    Directory: D:\starter-kit\starter-kit\trai-cay-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             66 nguon_hang.txt


    Directory: D:\starter-kit\starter-kit\trai-cay-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1041 fruit.log


    Directory: D:\starter-kit\starter-kit\trai-cay-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           7054 logo_trai_cay_sach.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-Content .\logs\fruit.log | Select-String "ERROR" >> .\logs\daily_report.txt
Get-Content .\logs\daily_report.txt -Head 3

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-07-28 09:31:32 [ERROR] Thanh toan bi tu choi
2026-07-28 09:40:32 [ERROR] Het thoi gian cho (timeout)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_report.ps1

```

### Kết quả hiển thị

```text
===Bao Cao Loi===

2026-07-28 09:31:32 [ERROR] Thanh toan bi tu choi
2026-07-28 09:40:32 [ERROR] Het thoi gian cho (timeout)
2026-07-28 09:49:32 [ERROR] Khong tim thay trang /hang-moi-ve (404)
2026-07-28 10:04:32 [ERROR] Thanh toan bi tu choi
2026-07-28 10:16:32 [ERROR] Het thoi gian cho (timeout)

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(Get-Content .\logs\fruit.log | Select-String "ERROR").Count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
5

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
ni .\logs\tong_hop.txt
"=== TONG HOP LOG ===" >> .\logs\tong_hop.txt
Get-Content .\logs\fruit.log | Select-String "WARNING" >> .\logs\tong_hop.txt
Get-Content .\logs\fruit.log | Select-String "ERROR" >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2026-07-28 09:37:32 [WARNING] Don giao trong gio cao diem
2026-07-28 10:07:32 [WARNING] Don giao trong gio cao diem
2026-07-28 10:13:32 [WARNING] Don giao trong gio cao diem



2026-07-28 09:31:32 [ERROR] Thanh toan bi tu choi
2026-07-28 09:40:32 [ERROR] Het thoi gian cho (timeout)
2026-07-28 09:49:32 [ERROR] Khong tim thay trang /hang-moi-ve (404)
2026-07-28 10:04:32 [ERROR] Thanh toan bi tu choi
2026-07-28 10:16:32 [ERROR] Het thoi gian cho (timeout)

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/ban_trai_cay_thang_7.xlsx`, không cần ghi vào đây.
