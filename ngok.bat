@echo off
title Ngrok

ngrok config add-authtoken 3DKDpOFh6Ev9wjfNdgoKVGuKhrs_5PCF8dpqMqtVryNAihZR8

echo Iniciando ngrok...
start "" "https://perjurer-resale-wafer.ngrok-free.dev"
ngrok http 80