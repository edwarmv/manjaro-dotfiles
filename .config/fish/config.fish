export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"

export FZF_DEFAULT_OPTS="
  --bind=alt-j:preview-down,alt-k:preview-up,alt-d:preview-page-down,alt-u:preview-page-up,change:first,alt-a:select-all,alt-A:deselect-all,alt-p:toggle-preview
  --preview-window noborder
  --layout=reverse
  --color=fg:#928374,bg:-1,hl:#7daea3
  --color=fg+:#928374,bg+:#3c3836,hl+:#7daea3
  --color=info:#d8a657,prompt:#d3869b,pointer:#d3869b
  --color=marker:#a9b665,spinner:#d3869b,header:#a9b665,preview-bg:-1
  --color=border:#928374
  --color=separator:#665c54
"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
set fzf_preview_dir_cmd exa --all --color=always
export EXA_COLORS="reset"
set -U fish_greeting
set -g fish_vi_force_cursor 1
if status is-interactive
end

abbr -a g git

# set fish_cursor_default block
# set fish_cursor_insert block
# set fish_cursor_replace_one block
# set fish_cursor_visual block

set fish_cursor_default block blink
set fish_cursor_insert line blink
set fish_cursor_replace_one underscore blink
set fish_cursor_replace underscore blink
set fish_cursor_visual block blink

# function fish_vi_cursor; end

set -Ux fish_tmux_autostart false
set -Ux fish_tmux_autostart_once false
set -Ux fish_tmux_autoconnect true

# abbr -a ta 'tmux attach -t'
# abbr -a tad 'tmux attach -d -t'
# abbr -a ts 'tmux new-session -s'
# abbr -a tl 'tmux list-sessions'
# abbr -a tksv 'tmux kill-server'
# abbr -a tkss 'tmux kill-session -t'

alias vi='nvim'
# alias config='/usr/local/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias kitty-install='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'
alias kitty-install-nightly='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly'

set -gx EDITOR nvim

# set -gx TERM xterm-256color

set -gx NEOVIDE_FRAME Buttonless

set -gx XDG_CONFIG_HOME $HOME/.config


#set -gx JAVA_HOME $(/usr/bin/java)
#set -gx ANDROID_HOME $HOME/Library/Android/sdk
#set -p PATH $ANDROID_HOME/emulator
#set -p PATH $ANDROID_HOME/tools
#set -p PATH $ANDROID_HOME/tools/bin
#set -p PATH $ANDROID_HOME/platform-tools
set -gx NNN_BMS 'h:~;c:~/.config;d:~/Documents;D:~/Downloads'
set -gx NNN_PLUG 'p:preview-tui;y:yoink'
set -gx NNN_FIFO '/tmp/nnn.fifo'
set -gx NNN_FCOLORS '000004000000000200000000'

set -gx CC '/usr/bin/gcc'

set -gx DOTNET_ROOT $HOME/.dotnet

fish_add_path -g $HOME/.dotnet
fish_add_path -g $HOME/.dotnet/tools


fish_add_path -g ~/.local/bin

bind -M default \cP history-search-backward
bind -M default \cN history-search-forward

bind -M insert \cP history-search-backward
bind -M insert \cN history-search-forward
bind -M insert -k nul accept-autosuggestion

bind -M insert \cF forward-char
bind -M insert \cB backward-char

bind -M insert \cA beginning-of-line
bind -M insert \cE end-of-line

# source ~/github/tokyonight.nvim/extras/fish/tokyonight_storm.fish

# zoxide init fish | source
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience


