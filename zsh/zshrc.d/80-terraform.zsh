autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

alias tf="terraform"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfin="terraform init"
alias tfim="terraform import"

