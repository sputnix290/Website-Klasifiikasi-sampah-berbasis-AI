# ♻️ EcoScan AI — Sistem Klasifikasi Sampah Berbasis Kecerdasan Buatan

> **Proyek Akhir Semester (UAS) — Mata Kuliah Applied Computer Vision**
> Universitas Pembangunan Jaya | Program Studi Informatika

![EcoScan AI Banner](https://img.shields.io/badge/EcoScan_AI-v1.2_Pro-10b981?style=for-the-badge&logo=recycle&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=flat-square&logo=python&logoColor=white)
![React](https://img.shields.io/badge/React-19-61DAFB?style=flat-square&logo=react&logoColor=black)
![Flask](https://img.shields.io/badge/Flask-3.x-000000?style=flat-square&logo=flask&logoColor=white)
![YOLOv8](https://img.shields.io/badge/YOLOv8-Ultralytics-FF6B00?style=flat-square&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PC9zdmc+)

---

## 📋 Deskripsi Proyek

**EcoScan AI** adalah aplikasi web cerdas yang mampu mengklasifikasikan jenis sampah secara otomatis menggunakan model *deep learning* berbasis **YOLOv8** (You Only Look Once versi 8). Aplikasi ini dirancang sebagai solusi teknologi untuk membantu pemilahan sampah secara tepat dan efisien.

### Kategori Sampah yang Dapat Dideteksi
| Kategori | Contoh |
|---|---|
| 🍶 **Botol Plastik** | Botol air mineral, botol minuman |
| 🫙 **Botol Kaca** | Botol selai, botol minuman kaca |
| 🥫 **Kaleng** | Kaleng minuman, kaleng makanan |

---

## 🏗️ Arsitektur Sistem

```
┌─────────────────────────────────────────────────────┐
│                    EcoScan AI                       │
│                                                     │
│   ┌────────────────┐       ┌────────────────────┐   │
│   │   Frontend     │       │      Backend       │   │
│   │   React.js     │──────▶│   Flask + YOLOv8   │   │
│   │  (Port: 3000)  │  HTTP │   (Port: 5000)     │   │
│   └────────────────┘  POST └────────────────────┘   │
│                               │                     │
│                               ▼                     │
│                        ┌────────────┐               │
│                        │  best.pt   │               │
│                        │(YOLO Model)│               │
│                        └────────────┘               │
└─────────────────────────────────────────────────────┘
```

---

## 📁 Struktur Direktori

```
Web berbasis AI untuk klasifikasi sampah/
├── 📂 Backend/
│   ├── app.py              # Server Flask + Endpoint prediksi
│   └── best.pt             # Model YOLOv8 hasil training (custom)
│
├── 📂 frontend/
│   ├── 📂 public/
│   ├── 📂 src/
│   │   ├── App.js          # Komponen React utama (UI Dashboard)
│   │   ├── App.css         # Stylesheet (Dark mode premium)
│   │   ├── index.js        # Entry point React
│   │   └── background.jpg  # Aset gambar latar
│   ├── package.json        # Dependensi frontend
│   └── README.md
│
├── 📂 Dataset/             # Dataset training sampah
├── 📓 Klasifikasi_sampah_*.ipynb  # Notebook training YOLOv8
├── 📄 Laporan UASComputer Vision.pdf
├── ▶️  run.bat              # Script otomatis menjalankan server
└── 📄 README.md            # Dokumentasi ini
```

---

## ⚙️ Teknologi yang Digunakan

### Backend
| Teknologi | Versi | Fungsi |
|---|---|---|
| **Python** | 3.10+ | Bahasa pemrograman utama |
| **Flask** | 3.x | Framework web server |
| **Flask-CORS** | - | Mengizinkan cross-origin request |
| **Ultralytics YOLOv8** | Latest | Library inferensi model AI |
| **Pillow (PIL)** | - | Pemrosesan gambar |

### Frontend
| Teknologi | Versi | Fungsi |
|---|---|---|
| **React** | 19.x | Framework UI |
| **Recharts** | 3.x | Visualisasi grafik real-time |
| **Lucide React** | Latest | Komponen ikon |

---

## 🚀 Cara Menjalankan Aplikasi

### Prasyarat

Pastikan software berikut sudah terinstal di komputer Anda:

- ✅ **Python** versi 3.10 atau lebih baru → [Download Python](https://www.python.org/downloads/)
- ✅ **Node.js** versi 18 atau lebih baru → [Download Node.js](https://nodejs.org/)
- ✅ **pip** (sudah termasuk dalam instalasi Python)

---

### Metode 1: Jalankan Otomatis (Rekomendasi ✨)

Cukup klik dua kali file **`run.bat`** yang ada di folder root proyek ini.

Script ini akan secara otomatis:
1. Membuka terminal baru dan menjalankan **Backend Flask**
2. Membuka terminal baru dan menjalankan **Frontend React**

> ⚠️ **Catatan:** Jangan tutup jendela terminal yang terbuka, karena server akan mati jika jendela ditutup.

---

### Metode 2: Jalankan Manual (Langkah per Langkah)

#### Langkah 1 — Setup & Jalankan Backend

1. Buka terminal / Command Prompt
2. Masuk ke folder `Backend`:

```bash
cd "Backend"
```

3. Install dependensi Python:

```bash
pip install flask flask-cors ultralytics pillow
```

4. Jalankan server Flask:

```bash
python app.py
```

✅ Backend akan berjalan di: **`http://localhost:5000`**

---

#### Langkah 2 — Setup & Jalankan Frontend

1. Buka terminal / Command Prompt **baru** (jangan tutup yang lama)
2. Masuk ke folder `frontend`:

```bash
cd "frontend"
```

3. Install dependensi Node.js (hanya perlu dilakukan sekali):

```bash
npm install
```

4. Jalankan server React:

```bash
npm start
```

✅ Frontend akan terbuka otomatis di browser: **`http://localhost:3000`**

---

## 🖥️ Tampilan & Fitur Aplikasi

### Dashboard Utama

| Fitur | Deskripsi |
|---|---|
| **📊 Metric Cards** | Menampilkan total scan hari ini, akurasi rata-rata, dan kategori dominan |
| **🖼️ Image Input Control** | Area drag-and-drop atau klik untuk upload gambar sampah |
| **🤖 AI Classification Report** | Menampilkan hasil deteksi (label + confidence level) secara real-time |
| **📈 Real-time Statistics** | Grafik area yang menampilkan tren scan berdasarkan waktu (menit) |

### Cara Menggunakan

1. Pastikan **kedua server** (Backend & Frontend) sudah berjalan
2. Buka browser dan akses `http://localhost:3000`
3. Klik area **"Upload sample image"** atau drag-and-drop foto sampah
4. Tunggu beberapa detik hingga model AI selesai menganalisis
5. Hasil klasifikasi akan muncul di panel **"AI Classification Report"**

---

## 🧠 Tentang Model AI

Model yang digunakan adalah **YOLOv8** yang telah dilatih secara khusus (*custom training*) menggunakan dataset sampah lokal.

| Parameter | Detail |
|---|---|
| **Arsitektur Model** | YOLOv8 (Classification Mode) |
| **File Model** | `Backend/best.pt` |
| **Ukuran Model** | ~2.9 MB |
| **Avg. Accuracy** | **86.77%** |
| **Task** | Image Classification |
| **Framework** | Ultralytics |

Proses training dapat dilihat di notebook:
📓 **`Klasifikasi_sampah_botol_plastik,_botol_kaca_dan_kaleng_Computer_vision.ipynb`**

---

## 🔌 API Endpoint Backend

### `POST /predict`

Menerima gambar dan mengembalikan hasil klasifikasi AI.

**Request:**
```
Content-Type: multipart/form-data
Body: image (file gambar)
```

**Response (Success):**
```json
{
  "label": "botol_plastik",
  "confidence": 0.9823,
  "status": "success"
}
```

**Response (Error):**
```json
{
  "error": "No image uploaded"
}
```

---

## 🐛 Troubleshooting

### ❌ "Gagal menyambungkan ke Server AI"
**Penyebab:** Backend Flask belum berjalan.

**Solusi:**
1. Buka terminal baru
2. Jalankan: `cd Backend && python app.py`
3. Pastikan tidak ada error di terminal backend

---

### ❌ `npm install` gagal / error
**Solusi:**
```bash
npm cache clean --force
npm install
```

---

### ❌ Port sudah digunakan
**Solusi:**
- Backend (5000): Cari dan matikan proses yang menggunakan port 5000
- Frontend (3000): Saat `npm start`, React akan otomatis menawarkan port alternatif

---

## 👨‍💻 Informasi Proyek

| | |
|---|---|
| **Institusi** | Universitas Pembangunan Jaya |
| **Program Studi** | Informatika |
| **Mata Kuliah** | Applied Computer Vision |
| **Semester** | 6 |
| **Tahun** | 2025/2026 |

---

## 📄 Lisensi

Proyek ini dibuat untuk keperluan akademik sebagai tugas akhir semester (UAS) mata kuliah Applied Computer Vision.

---

<div align="center">
  <strong>♻️ EcoScan AI — Mengklasifikasikan Sampah dengan Kecerdasan Buatan</strong><br>
  <em>Universitas Pembangunan Jaya | Informatika | 2025/2026</em>
</div>
