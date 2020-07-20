Go vim /etc/bash.bashrc                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                               
[[ $- != *i* ]] && return                                                                                                                                                                      
                                                                                                                                                                                               
[[ $DISPLAY ]] && shopt -s checkwinsize
                                                                                                                                                                            
neofetch --ascii_distro blackarch                                                                                                                                                              
echo "*****************************************************************************************************************************************" | pv -qL 30 | lolcat                          
figlet "hello root" | pv -qL 80                                                                                                                                                                
cowsay -f dragon "Hi \u" | lolcat                                                                                                                                                          
PS1="$(tput setaf 2) \t \H $(tput setaf 3)\u $(tput setaf 6)\v patch: \W $(tput setaf 1) >> $(tput setaf 5) "                                                                                  
                                                                                                                                                                                               
case ${TERM} in                                                                                                                                                                                
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)                                                                                                                                                       
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'                                                           
                                                                                                                                                                                               
    ;;                                                                                                                                                                                         
  screen*)                                                                                                                                                                                     
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'                                                           
    ;;                                                                                                                                                                                         
esac                                                                                                                                                                                           
                                                                                                                                                                                               
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion                                                                                                                                                                                                                                                                                  
