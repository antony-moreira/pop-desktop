# --- P10K instant prompt ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# --- ALIASES ---
alias ls='eza -lh --icons'
alias l="eza -lah"
alias ll="eza -lahTig --level=1 --icons"
alias lll='eza -lahTig --level=2 --icons'
alias bat='batcat'
alias cd='z'
alias cdi='zi'
alias vim='nvim'
alias f="fzf --info default \
    --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
alias aws-count='aws sts get-caller-identity'
alias edit-alias='code /home/antony/.zshrc'
alias kk='kubectl krew'
alias eks-config='aws eks update-kubeconfig --region sa-east-1 --name'
alias eks-ls='aws eks list-clusters --region sa-east-1'
alias gp-develop='git pull origin develop'
alias k='kubectl'
alias kctx='k config set-context $(kubectl config current-context) --namespace'
alias kd='kubectl describe'
alias kd-nodeclass='kubectl describe EC2NodeClass'
alias kdel='kubectl delete'
alias kedit='kubectl edit'
alias kedi-scobj='kubectl edit scaledobject'
alias keti='kubectl exec -ti'
alias kexec-deploy=' k exec ti deploy'
alias kg-nodeclass='kubectl get EC2NodeClass'
alias kg-scobj='kubectl get scaledobject -A'
alias kg-tgb='k get targetgroupbinding -A'
alias kgd='kubectl get deployments'
alias kgn='kubectl get nodes'
alias kgnc='kubectl get nodeclaim'
alias kgnp='kubectl get nodepool'
alias kgns='kubectl get namespaces'
alias kgp='kubectl get pods'
alias kgpa='k get pods -A |grep'
alias kgpw='k get pods -A -o wide |grep'
alias krrd='kubectl rollout restart deployment'
alias krrst='kubectl rollout restart statefulset'
alias krud='k rollout undo deploy'
alias ksdr='kubectl scale deploy --replicas='

# --- ZOXIDE ---
eval "$(zoxide init zsh)"

# --- FZF ---
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# --- PATH ---
export PATH="$HOME/.local/bin:$PATH"

# --- P10K config ---
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh