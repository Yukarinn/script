# local black=$FG[234]
local blue=$FG[033]
# local cyan=$FG[037]
local green=$FG[064]
local orange=$FG[166]
# local red=$FG[160]
local violet=$FG[061]
local white=$FG[254]
local yellow=$FG[136]

# Git status.
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_DELETED="-"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED=">"
ZSH_THEME_GIT_PROMPT_UNMERGED="="
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"

function get_git_prompt {
    if [[ -n $(git rev-parse --is-inside-work-tree 2>/dev/null) ]]; then
        local git_status="$(git_prompt_status)"
        if [[ -n $git_status ]]; then
            git_status=" %{$blue%}[$git_status]%{$reset_color%}"
        fi
        local git_prompt="%{$terminfo[bold]$white%} on %{$violet%}$(git_current_branch)-$(git_prompt_short_sha)$git_status%{$reset_color%}"
        echo $git_prompt
    fi
}

# Prompt: (TIME_STAMP) USER at MACHINE in DIRECTORY BRANCH-SHA [STATUS]
# $ command
PROMPT=$'%{$terminfo[bold]$orange%}%n%{$white%} at %{$yellow%}%m%{$white%} in %{$green%}%~%u%{$reset_color%}$(get_git_prompt)
%{$white%}\$%{$reset_color%} '

# %* time
# %n username
# %m machine
# %~%u directory
