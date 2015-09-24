#!/bin/sh
sudo umount /dev/xvdb
sudo umount /dev/xvdc
sudo mkfs -t ext4 /dev/xvdb
sudo mkfs -t ext4 /dev/xvdc
sudo mount -a
sudo chown galaxy:galaxy /disk/*
cd ~/galaxy-dist
cp -r database_bak/* database/
