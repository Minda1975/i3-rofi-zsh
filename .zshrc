# Created by newuser for 5.7.1
export PATH="${PATH}:${HOME}/.local/bin/"



autoload -Uz vcs_info compinit && compinit

preexec() print -n "\e]0;$1\a"

precmd() {
    print -Pn '\e]0;%~\a' ; vcs_info
    psvar[1,4]=(yellow magenta blue "${vcs_info_msg_0_#*:}")
    local hs=`date +%-H` US=red U=yellow S=green
    (( 0 < $hs && $hs <  7 ))            && psvar[1]=red
    (( 9 < $hs && $hs < 22 ))            && psvar[1]=green
    [[ $PWD:A = $HOME* ]]                && psvar[2]=cyan
    [[ ${hs::=${vcs_info_msg_0_%%:*}} ]] && psvar[3]=${(P)hs}
}

psvar[5]=$ ; [[ $RANGER_LEVEL ]] && psvar[5]=r

PROMPT='%B[%F{%v}%T%f][%F{%2v}%~%f]%(4V.[%F{%3v}%4v%f].)%F{%(?.green.red)}%5v%f%b '
RPROMPT='%B[%F{%(?.green.red)}%?%f]%b'
SPROMPT='Correct %B%F{red}%R%f%b to %B%F{yellow}%r%f%b [nyae]? '
MENUPROMPT='%S%F{green}%P%f%s'

# Activate vim mode.
bindkey -v



