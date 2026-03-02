# Windows PowerShell Tweaks & Utilities

Repository ini berisi kumpulan **skrip PowerShell** untuk melakukan tweak sistem Windows dan otomasi sederhana, termasuk:
- Visual tweak (Acrylic Transparency)
- Otomatisasi pembuatan folder

---

## 📦 Daftar Skrip

### 1️⃣ Explorer & Taskbar Acrylic Transparency (Windows 10)
Mengaktifkan efek transparansi **Acrylic** pada **Windows Explorer** dan **Taskbar** melalui modifikasi **Windows Registry** tanpa aplikasi pihak ketiga.

**Fitur:**
- Mengaktifkan `AcrylicTransparency` pada tingkat sistem
- Menyesuaikan pengaturan `Advanced` pada Explorer
- Mengatur izin Registry agar perubahan bersifat permanen

---

### 2️⃣ Automatic Folder Creation (PowerShell)
Skrip PowerShell untuk **membuat banyak folder secara otomatis** dalam satu perintah, cocok untuk struktur project, semester kuliah, atau setup direktori.

**Contoh Perintah:**

```powershell
$folders = @(
  "Semester-6\Mk-Rekayasa-Perangkat-Lunak",
  "Semester-6\Mk-Kerja-Praktek",
  "Semester-6\Mk-Teknologi-Internet-of-Things",
  "Semester-6\Mk-Pemograman-2",
  "Semester-6\Mk-Basis-Data",
  "Semester-6\Mk-Mobile-Programming",
  "Semester-6\Mk-Sistem-Pendukung-Keputusan",
  "Semester-6\Mk-Teknik-Kompilasi"
)

foreach ($f in $folders) {
  New-Item -ItemType Directory -Path $f -Force
}