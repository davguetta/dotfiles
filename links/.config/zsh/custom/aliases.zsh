# open zsh and git config files
alias zshconfig="nvim ~/.zshrc"
alias gitconfig="nvim ~/.gitconfig"

# alias access to klaxit apps"
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

# Go back to master branch (klaxit)
alias master="gsw master"

# Go back to master branch and get it up to date
alias refreshm="gsw master && git pull && git f && bundle install"

# launch klaxit rails console
alias mc="make console"

# alias browse a specific url
alias browse="open -a Firefox.app"
alias NPRapi="browse https://github.com/klaxit/klaxit-api"
alias NPRotpmaster="browse https://github.com/klaxit/klaxit-otp-master"
alias NPRpay="browse https://github.com/klaxit/klaxit-pay"
alias NPRinsights="browse https://github.com/klaxit/klaxit-insights"
commit() {
    browse "https://github.com/klaxit/klaxit-$1/commit/$2"
}

# for special characters e.g. "?", there must be a backslash \ before it for it to go through
alias PRwip="browse https://github.com/pulls\?q=is%3Aopen+is%3Apr+author%3Adavguetta+archived%3Afalse+user%3Aklaxit+"
alias samurai="browse https://trello.com/b/Ff9Cazno/tech-samura%C3%AF\?filter=member:davidguetta13"
alias playground="browse https://klaxit-api-playground.herokuapp.com/admin/"

# alias klaxit commands"
alias kmount="klaxit branch mount master"
alias kstart="klaxit develop start"
alias krailsmigrate="bundle exec rails db:migrate"
alias krakemigrate="bundle exec rake db:migrate"
alias kspec="bundle exec rspec"
alias fspec="bundle exec rspec --fail-fast"
alias be="bundle exec"
alias dbss="be rake db:migrate:status"
alias dbss_test="RACK_ENV='test' dbss"
alias dbmgt="be rake db:migrate"
alias dbmgt_test="RACK_ENV='test' dbmgt"
alias dbbck="be rake db:rollback"
alias dbbck_test="RACK_ENV='test' dbbck"
