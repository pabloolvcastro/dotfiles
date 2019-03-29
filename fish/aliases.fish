# Some aliases for my fish 

# System
alias sdown "sudo shutdown -P now"
alias rstart "sudo shutdown -r now"
alias rfish "source ~/.config/fish/config.fish"

# Alises for directory navigation
alias cd.. "cd .."
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# Java
alias cjdk8 "set -gx JAVA_HOME /usr/lib/jvm/java-8-oracle/"
alias cjdk11 "set -gx JAVA_HOME /usr/lib/jvm/java-11-oracle/"
alias mci "mvn clean install"
alias javab8 "cjdk8 & mci"
alias javab11 "cjdk11 & mci"

# Git
alias g "git"
alias gcum "g checkout up-master"
alias gp "g pull"
alias gf "g fetch"
alias gdelb "g branch -D"
alias gnewb  "g checkout -b"
alias gcup "gcum & gp"
alias gpo "g push origin"
alias gpr "g permission-reset"
alias gg "g gui"
alias gpothis "gpo (git rev-parse --abbrev-ref HEAD)"

# Lint
alias ylint "yamllint -c yamllint_rules.yaml ."

# Kubernetes
alias k "kubectl"
alias kcprod "kubectl config use-context pablo@k8s110.prod.sa-east-1.contaazul.local"
alias kcsandbox "kubectl config use-context gke_contaazul-sandbox_us-east4-b_cluster-1"
alias kgp "k get pods"
alias klogs "k logs -f"
alias kdp "k describe pod"
alias kclocal "k config use-context minikube"

# Minukube
alias mk "minikube"

# Vault
alias vcprod "set -gx VAULT_ADDR 'https://vault-prod.contaazul.com:8200'"
alias vcsandbox "set -gx VAULT_ADDR 'https://vault-dev.contaazul.com:8200'"
alias vlistroles "vault list database/roles"
