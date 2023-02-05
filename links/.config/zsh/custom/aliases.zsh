# zsh and git config files
alias zshconfig="nvim $ZDOTDIR/.zshrc"
alias gitconfig="nvim $XDG_CONFIG_HOME/git/config"

alias dotfiles="cd $HOME/code/dotfiles/"

# Browse a specific url
alias browse="open -a Firefox.app"
commit() {
    browse "https://github.com/klaxit/klaxit-$1/commit/$2"
}

# Go back to master branch and update it
alias master="gsw master"
alias refreshm="gsw master && git pull && git f && bundle install"

# Open frequent orga pages
# for special characters e.g. "?", there must be a backslash \ before it for it to go through
alias wip="browse https://github.com/pulls\?q=is%3Aopen+is%3Apr+author%3Adavguetta+archived%3Afalse+user%3Aklaxit+"
alias samurai="browse https://trello.com/b/Ff9Cazno/tech-samura%C3%AF\?filter=member:davidguetta13"
alias playground="browse https://klaxit-api-playground.herokuapp.com/admin/"

# klaxit commands aliases
alias mc="make console"
alias kmount="klaxit branch mount master"
alias kstart="klaxit develop start"
alias be="bundle exec"
alias kspec="be rspec"
alias fspec="be rspec --fail-fast"
alias dbss="be rake db:migrate:status"
alias dbss_test="RACK_ENV='test' dbss"
alias dbmgt="be rake db:migrate"
alias dbmgt_test="RACK_ENV='test' dbmgt"
alias dbbck="be rake db:rollback"
alias dbbck_test="RACK_ENV='test' dbbck"

# Access to klaxit apps"
alias api="~/code/klaxit-api"
alias apiv="~/code/klaxit-api && nvim"
alias aws="~/code/klaxit-aws-rds"
alias awsv="~/code/klaxit-aws-rds && nvim"
alias insights="~/code/klaxit-insights"
alias insightsv="~/code/klaxit-insights && nvim"
alias matcher="~/code/klaxit-matcher"
alias matcherv="~/code/klaxit-matcher && nvim"
alias otpmaster="~/code/klaxit-otp-master"
alias otpmasterv="~/code/klaxit-otp-master && nvim"
alias pay="~/code/klaxit-pay"
alias payv="~/code/klaxit-pay && nvim"
alias toolbelt="~/code/klaxit-toolbelt"
alias toolbeltv="~/code/klaxit-toolbelt && nvim"
alias universe="~/code/klaxit-universe"
alias universev="~/code/klaxit-universe && nvim"
alias via="~/code/klaxit-via"
alias viav="~/code/klaxit-via && nvim"
alias web="~/code/klaxit-web"
alias webv="~/code/klaxit-web && nvim"

