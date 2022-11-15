#!/bin/bash

# 研修で使用するプログラムのインストーラをダウンロードする

# ダウンロードファイルのパス
installerPath_git=https://github.com/git-for-windows/git/releases/download/v2.37.2.windows.2/Git-2.37.2.2-64-bit.exe
installerPath_composer=https://getcomposer.org/Composer-Setup.exe

# git for Windows
echo $installerPath_git
curl -OLk $installerPath_git

# Composer
echo $installerPath_composer
curl -OLk $installerPath_composer
