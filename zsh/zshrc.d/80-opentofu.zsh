autoload -U +X bashcompinit && bashcompinit
complete -C /home/kenton/Code/public/tofuenv/bin/tofu tofu

alias tf="tofu"
alias tfa="tofu apply"
alias tfp="tofu plan"
alias tfin="tofu init"
alias tfim="tofu import"

