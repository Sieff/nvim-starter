# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
choco install 7zip fd fzf gzip lazygit make mingw neovim nvm oh-my-posh powershell-core python314 ripgrep unzip wezterm wget zig zoxide -y
nvm install 24.14.0
nvm use 24.14.0
npm install -g tree-sitter-cli@latest
# https://github.com/luarocks/luarocks/blob/main/docs/installation_instructions_for_windows.md
git clone https://github.com/Sieff/nvim-starter $env:LOCALAPPDATA\nvim
