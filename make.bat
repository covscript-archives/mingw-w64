@echo off
cd %~dp0
xcopy /Y license.rtf mingw64
mkdir wix_build
cd wix_build
candle ..\Product.wxs -nologo
light -ext WixUIExtension -b ..\mingw64 -cultures:en-us Product.wixobj -out ..\mingw64.msi -nologo
cd ..