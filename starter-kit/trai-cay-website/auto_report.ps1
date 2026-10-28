# Script: auto_report.txt
# Tac gia: Nguyen Thai Hoang
# Ngay tao: 28/10/2026

Write-Host "Dang loc log..."

"===Bao Cao Loi===" > .\logs\auto_report.txt
Get-Content .\logs\fruit.log | Select-String "ERROR" >> .\logs\auto_report.txt

Write-Host "Hoan Thanh!"