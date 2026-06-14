@echo off
chcp 65001 >nul
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cd /d "C:\Users\people\Desktop\helper\bin"
set "LISTS=C:\Users\people\Desktop\helper\lists"
taskkill /f /im winws.exe >nul 2>&1

echo ============================================
echo   HELPER BY w2w34
echo ============================================

:: DISCORD
start "" /b winws.exe --wf-tcp=443 --wf-udp=443,50000-65535 --filter-tcp=443 --dpi-desync=fake,split --dpi-desync-split-pos=1 --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --ipset=%LISTS%\ipset-discord.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --ipset=%LISTS%\ipset-discord.txt --new --filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-fake-discord=discord-ip-discovery-without-port.bin --dpi-desync-repeats=6 --ipset=%LISTS%\ipset-discord.txt --new
echo [+] Discord

:: YOUTUBE + GOOGLE
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake,split --dpi-desync-split-pos=1 --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-youtube.txt --hostlist=%LISTS%\list-google.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-youtube.txt --hostlist=%LISTS%\list-google.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] YouTube

:: TWITCH
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake,split --dpi-desync-split-pos=1 --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-twitch.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-twitch.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Twitch

:: STEAM
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-steam.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-steam.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Steam

:: TELEGRAM
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-telegram.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-telegram.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Telegram

:: TIKTOK + INSTAGRAM + META
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-tiktok.txt --hostlist=%LISTS%\list-instagram.txt --hostlist=%LISTS%\list-meta.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-tiktok.txt --hostlist=%LISTS%\list-instagram.txt --hostlist=%LISTS%\list-meta.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] TikTok + Instagram

:: SPOTIFY + SOUNDCLOUD
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-spotify.txt --hostlist=%LISTS%\list-soundcloud.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-spotify.txt --hostlist=%LISTS%\list-soundcloud.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Spotify

:: TORRENTS
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-rutracker.txt --hostlist=%LISTS%\list-rutor.txt --hostlist=%LISTS%\list-thepiratebay.txt --hostlist=%LISTS%\list-torrentbay.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Torrents

:: REZKA + NNMCLUB
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-rezka.txt --hostlist=%LISTS%\list-nnmclub.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Rezka

:: GEOMETRY DASH + NEWGROUNDS
start "" /b winws.exe --wf-tcp=80,443,2052,2053,2082,2083,2086,2087,2095,2096 --wf-udp=443,50000-65535 --filter-tcp=80 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-newgrounds.txt --ipset=%LISTS%\ipset.txt --new --filter-tcp=443 --dpi-desync=fake,fakedsplit --dpi-desync-split-pos=1 --dpi-desync-fooling=md5sig,badseq,ts --dpi-desync-repeats=8 --dpi-desync-autottl=2 --hostlist=%LISTS%\list-newgrounds.txt --ipset=%LISTS%\ipset.txt --new --filter-tcp=2052,2053,2082,2083,2086,2087,2095,2096 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-repeats=6 --dpi-desync-autottl=2 --hostlist=%LISTS%\list-newgrounds.txt --ipset=%LISTS%\ipset.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --dpi-desync-repeats=10 --hostlist=%LISTS%\list-newgrounds.txt --ipset=%LISTS%\ipset.txt --new --filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-repeats=8 --hostlist=%LISTS%\list-newgrounds.txt --ipset=%LISTS%\ipset.txt --new
echo [+] Geometry Dash

:: APPLE + MICROCHIP + NVIDIA + UBISOFT
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-apple.txt --hostlist=%LISTS%\list-microchip.txt --hostlist=%LISTS%\list-nvidia.txt --hostlist=%LISTS%\list-ubisoft.txt --ipset=%LISTS%\ipset-ubisoft.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Apple + NVIDIA

:: TWITTER
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-twitter.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-twitter.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Twitter

:: CLOUDFLARE + SPEEDTEST + TOR
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-cloudflare.txt --hostlist=%LISTS%\list-speedtest.txt --hostlist=%LISTS%\list-tor.txt --ipset=%LISTS%\ipset-cloudflare.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Cloudflare

:: ULTIMATE + CHESS + MISC + COMMUNITY + HOWDYHO
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake,split --dpi-desync-split-pos=1 --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-ultimate.txt --hostlist=%LISTS%\list-chess.txt --hostlist=%LISTS%\list-misc.txt --hostlist=%LISTS%\list-community.txt --hostlist=%LISTS%\list-howdyho.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-ultimate.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Ultimate

:: VIBER
start "" /b winws.exe --wf-tcp=80,443 --wf-udp=443 --filter-tcp=443 --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-autottl=2 --hostlist=%LISTS%\list-viber.txt --ipset=%LISTS%\ipset-viber.txt --ipset=%LISTS%\ipset-all.txt --new --filter-udp=443 --dpi-desync=fake --dpi-desync-fake-quic=quic_initial_www_google_com.bin --hostlist=%LISTS%\list-viber.txt --ipset=%LISTS%\ipset-viber.txt --ipset=%LISTS%\ipset-all.txt --new
echo [+] Viber

echo.
echo ============================================
echo   STARTED
echo ============================================
timeout /t 3 >nul