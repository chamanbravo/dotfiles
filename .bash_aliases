alias ..='cd ..'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias gh='cd ~/Documents/github/'
alias doc='cd ~/Documents'
alias notes='cd ~/Documents/notes/notes/'
alias de='cd ~/Desktop'
alias todo='nvim ~/Documents/todo.md'
alias scoop='powershell scoop.ps1'
alias choco='C:/ProgramData/chocolatey/choco'
alias cat='bat'
alias vi='nvim'
alias c.='code .'
alias s.='start .'
alias nf='neofetch'
alias notes-preview='cd ~/Documents/notes/notes && markdown-preview -f index.md -t default-dark -p 34567 --no-opener'
alias ssh-server='ssh debian@15.235.193.62'
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias f='cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv --exclude venv --exclude AppData | fzf)'
alias vif='vi $(fzf)'

# git aliases
alias gc='git clone'
alias gp='git pull'
alias gcb='git checkout -b '
alias gb='git branch'
alias gbd='git branch -d '
alias gbD='git branch -D'
alias grau='git remote add upstream'
alias gfu='git fetch upstream'

# python aliases
alias pyvenv='py -m venv venv'
alias actvenv='source ./venv/Scripts/activate'

# django
alias pmr='py manage.py runserver'
alias pmmm='py manage.py makemigrations'
alias pmm='py manage.py migrate'
alias pmt='py manage.py test'
alias pmcs='py manage.py createsuperuser'

# npm
alias ni='npm install'
alias nrd='npm run dev'
alias nrb='npm run build'
alias nid='npm install -d '

# yarn
alias yi='yarn install'
alias ya='yarn add'
alias yd='yarn dev'
alias yb='yarn build'
alias yad='yarn add -d '

