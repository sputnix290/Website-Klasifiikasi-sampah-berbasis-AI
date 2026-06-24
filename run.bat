@echo off
title EcoScan AI - Auto Runner Server

echo ====================================================
echo   MEMULAI SERVER OTOMATIS (FRONTEND + BACKEND)
echo ====================================================

:: 1. JALANKAN BACKEND FLASK (Membuka jendela terminal baru)
echo Menjalankan Backend Flask...
start "Flask Backend Engine" cmd /k "cd /d D:\INFORMATIKA\Kuliah\Semester 6\Applay computer vision\Dataset Project UAS\Web berbasis AI untuk klasifikasi sampah\Backend && python app.py"

:: Beri jeda 3 detik agar Flask up duluan
timeout /t 3 /nobreak > nul

:: 2. JALANKAN FRONTEND NEXT.JS (Membuka jendela terminal baru)
echo Menjalankan Frontend Next.js...
start "Next.js Frontend UI" cmd /k "cd /d D:\INFORMATIKA\Kuliah\Semester 6\Applay computer vision\Dataset Project UAS\Web berbasis AI untuk klasifikasi sampah\frontend && npm start"

echo ====================================================
echo   KEDUA SERVER SUDAH BERJALAN DI JENDELA TERPISAH
echo   Jangan tutup jendela ini atau server akan mati.
echo ====================================================
pause