# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[green]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local root_host='%{$fg[red]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local current_dir='%{$fg[cyan]%} %d%{$reset_color%}'
#local rvm_ruby=''
#if which rvm-prompt &> /dev/null; then
#  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
#else
#  if which rbenv &> /dev/null; then
#    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
#  fi
#fi
local git_branch='$(git_prompt_info)%{$reset_color%}'
#local bn=`basename \"$VIRTUAL_ENV\"`
#if [[ "" == $bn ]]
#then

#else
#local venv_name='%{${fg[green]}%}`basename \"$VIRTUAL_ENV\"`%{${reset_color}%}'
#PROMPT="╭─[${venv_name}] ${user_host} ${current_dir} ${git_branch}
#╰─%B$%b "
#fi
PROMPT=''
RPS1=''
if (( EUID == 0 )) ; then
PROMPT="${root_host} ${current_dir} ${git_branch}
->%B$%b "
RPS1="${return_code}"
else
PROMPT="${user_host} ${current_dir} ${git_branch}
->%B$%b "
RPS1="${return_code}"
fi
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
