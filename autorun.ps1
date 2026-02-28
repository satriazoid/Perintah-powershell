# 1. Tentukan Path
$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$name = "AcrylicTransparency"
$value = 0

# 2. Pastikan Path ada, jika tidak maka dibuat
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# 3. Eksekusi Perubahan Registry
Write-Host "Menerapkan Tweak Acrylic..." -ForegroundColor Cyan
Set-ItemProperty -Path $registryPath -Name $name -Value $value -Type DWord

# 4. Memastikan Efek Transparansi Utama Aktif
$themePath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
Set-ItemProperty -Path $themePath -Name "EnableTransparency" -Value 1 -Type DWord

# 5. Restart Explorer untuk Menerapkan Perubahan
Write-Host "Menghidupkan ulang Windows Explorer..." -ForegroundColor Yellow
Stop-Process -Name explorer -Force
Start-Process explorer.exe

Write-Host "Berhasil! Jika warna tidak berubah, pastikan 'Transparency Effects' di Settings sudah ON." -ForegroundColor Green