#!/bin/bash

while true
do
    # Memberikan keterangan tentang command yang akan dijalankan
    echo "Memory size in Megabytes"
    # Menampilkan ukuran memory pada sistem dalam satuan megabytes
    free -m
    # Memberikan spasi
    echo ""
    # Jeda selama 3 detik
    sleep 3
    # Memberikan keterangan tentang command yang akan dijalankan
    echo "Disk space in Gigabytes"
    # Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes
    df -BG
    # Memberikan spasi
    echo ""
    # Jeda selama 3 detik
    sleep 3
    # Memberikan keterangan tentang command yang akan dijalankan
    echo "Disk space only Filesystem and Use% coloumn without tmpfs"
    # Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use%
    df -h | awk 'NR>=1 && $1 !~ /tmpfs/ {print $1, $5}'
    # Memberikan spasi
    echo ""
    # Jeda selama 1 menit
    sleep 1m
done