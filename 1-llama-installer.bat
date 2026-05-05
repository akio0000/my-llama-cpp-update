@echo off
setlocal
:: ==========================================
:: 新規インストール用です
:: ==========================================
:: インストールしたいフォルダのパスに変更してください
:: 今はCドライブ直下になってます
:: CPUビルドはCUDAを消してください
:: CPUのコア数に応じて-jの数字を変更してください
:: ==========================================
echo === 最新コード取得 ===
git clone https://github.com/ggml-org/llama.cpp C:\llama.cpp
cd /d C:\llama.cpp
cmake -B build -DGGML_CUDA=ON
echo === ビルド開始 ===
cmake --build build --config Release -j 8
echo === 完了 ===
pause
