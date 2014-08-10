local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[green]%}%~%{$reset_color%}'
local rvm_ruby=' using %{$fg[yellow]%}$(rvm_prompt_info || rbenv_prompt_info)%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
${current_dir}${rvm_ruby}${git_branch}
%B›%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$fg[magenta]%}behind%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" with %{$fg[magenta]%}unpushed%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED=" %{$fg[magenta]%}diverged%{$reset_color%}"
