# zshrc
# M.M.Radoja

# The following lines were added by compinstall {{{

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/matthew/.zshrc'

autoload -Uz compinit
compinit

#}}}
# History {{{

HISTFILE=$HOME/.history
HISTSIZE=1000000
SAVEHIST=1000000
# setopt BANG_HIST                
# Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY         
# Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY       
# Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY            
# Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST   
# Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS         
# Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS     
# Delete old recorded entry if new entry is a duplicate.
# setopt HIST_FIND_NO_DUPS        
# Do not display a line previously found.
# setopt HIST_IGNORE_SPACE        
# Don't record an entry starting with a space.
# setopt HIST_SAVE_NO_DUPS        
# Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS       
# Remove superfluous blanks before recording entry.
setopt HIST_VERIFY              
# Don't execute immediately upon history expansion.
# setopt HIST_BEEP                
# Beep when accessing nonexistent history.
# }}}
# Aliases {{{

source $HOME/.aliases

# }}}
  # Prompt {{{
#autoload -Uz promptinit
#promptinit

# set inline editor to vim
export EDITOR='vim'

#function precmd() {
#}

# change prompt colour if in editor mode
function zle-line-init zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/[1;31m}/(main|viins)/[1;32m}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setprompt() {
    setopt prompt_subst
    PROMPT='${VIMODE}%D{%b %d %H:%M} %~ %{[0m%}'
}

setprompt

#TMOUT=1
#TRAPALRM() {
#    zle reset-prompt
#}

# }}}
# Startup {{{
if [[ -z $DISPLAY ]] && [[ $(tty) == "/dev/tty1" ]];then
	startx
else


fi
# }}}
# Keybindings {{{
# key bindings
bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line
bindkey "e[5~" beginning-of-history
bindkey "e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "e[3~" delete-char
bindkey "^?" backward-delete-char
bindkey "e[2~" quoted-insert
bindkey "e[5C" forward-word
bindkey "eOc" emacs-forward-word
bindkey "e[5D" backward-word
bindkey "eOd" emacs-backward-word
bindkey "ee[C" forward-word
bindkey "ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "e[8~" end-of-line
bindkey "e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "eOH" beginning-of-line
bindkey "eOF" end-of-line
# for freebsd console
bindkey "e[H" beginning-of-line
bindkey "e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix


# }}}

# vim:foldmethod=marker:foldlevel=0
