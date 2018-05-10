EMOJIS=('🚀' '🎯' '🎾' '🤖' '👽' '👻' '👀' '💍' '🐔' '🐙' '🐤' '🐠' '🍁' '✨' '💥' '🍉' '🍕' '🍪' '🍭' '🍺' '⛵️' '💸' '🔑')

EMOJI=${EMOJIS[RANDOM % ${#EMOJIS[@]} - 1 ]}

PROMPT='$EMOJI %{$fg[red]%}%c%{$reset_color%}$(git_prompt_info) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}@%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
