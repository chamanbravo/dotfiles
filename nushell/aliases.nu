alias .. = cd ..
alias ls = eza --icons
alias l = eza --icons
alias la = l -a
alias ll = l -l -a
alias gh = cd ~/Documents/github/
alias doc = cd ~/Documents
alias dl = cd ~/Downloads
alias notes = cd ~/Documents/notes/notes/
alias de = cd ~/Desktop
alias todo = nvim ~/Documents/todo.md
alias scoop = powershell scoop.ps1
alias choco = C:/ProgramData/chocolatey/choco
alias cat = bat
alias vi = nvim
alias c. = code .
alias s. = start .
alias nf = neofetch
alias ssh-chaman = ssh debian@chamanbudhathoki.com.np
alias tree = cmd //c tree
alias df = duf
alias cdvi = cd ~/AppData/Local/nvim
alias psql = psql -U postgres

# Ansible from WSL
alias ansible = wsl --exec ansible

# Git aliases
alias gc = git clone
alias gp = git pull
alias gcb = git checkout -b
alias gb = git branch
alias gbd = git branch -d
alias gbD = git branch -D
alias grau = git remote add upstream
alias gfu = git fetch upstream

# Python aliases
alias pyvenv = uv venv
# alias actvenv = source ./.venv/Scripts/activate

# Django
alias pmr = py manage.py runserver
alias pmmm = py manage.py makemigrations
alias pmm = py manage.py migrate
alias pmt = py manage.py test
alias pmcs = py manage.py createsuperuser

# npm
alias ni = npm install
alias nrd = npm run dev
alias nrb = npm run build
alias nid = npm install -d

# Yarn
alias yi = yarn install
alias ya = yarn add
alias yd = yarn dev
alias yb = yarn build
alias yad = yarn add -d

