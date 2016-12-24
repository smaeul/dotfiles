[[ $TERM = linux ]] && export LC_MESSAGES="C"

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

HISTFILE=${XDG_CACHE_HOME}/history/zsh
HISTSIZE=1000
PROMPT='%B%2F%n@%m%f:%4F%~%f%b$ '
SAVEHIST=1000

bindkey -e
setopt \
  appendcreate \
  autocontinue \
  autopushd \
  cbases \
  combiningchars \
  forcefloat \
  histexpiredupsfirst \
  histfcntllock \
  histignoredups \
  histnostore \
  histreduceblanks \
  ignoreclosebraces \
  interactivecomments \
  kshzerosubscript \
  localloops \
  magicequalsubst \
  nobanghist \
  nobareglobqual \
  nobeep \
  noflowcontrol \
  noglobalrcs \
  nohup \
  nomultifuncdef \
  nounset \
  numericglobsort \
  octalzeroes \
  posixidentifiers \
  posixstrings \
  pushdignoredups \
  shnullcmd \
  warncreateglobal
stty -ixon
ttyctl -f

. "$XDG_CONFIG_HOME"/aliases
