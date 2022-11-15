#!/bin/bash

# 研修で使用するプログラムのインストーラをダウンロードする

# ダウンロードファイルのパス
installerPath_git=https://github.com/git-for-windows/git/releases/download/v2.37.2.windows.2/Git-2.37.2.2-64-bit.exe
installerPath_composer=https://getcomposer.org/Composer-Setup.exe
#installerPath_xampp=https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.10/xampp-windows-x64-8.1.10-0-VS16-installer.exe
installerPath_xampp=https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.6/xampp-windows-x64-8.1.6-0-VS16-installer.exe

# git for Windows
#echo $installerPath_git
#curl -OLk $installerPath_git

# xampp
echo $installerPath_xampp
curl -OLk $installerPath_xampp

# Composer
#echo $installerPath_composer
#curl -OLk $installerPath_composer
