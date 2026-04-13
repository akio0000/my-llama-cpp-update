@echo off
cd /d C:\llama.cpp

echo === 最新コード取得 ===
git pull

echo === buildフォルダ削除 ===
if exist build (
rmdir /s /q build
)

echo === CMake生成 ===
cmake -B build -DGGML_CUDA=ON

echo === ビルド開始 ===
cmake --build build --config Release

echo === 完了 ===
pause
