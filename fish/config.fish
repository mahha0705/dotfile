if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
 curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

set fish_plugins theme peco

set -x PATH $HOME/.nodenv/bin ~/.nodenv/shims ~/.rbenv/shims $PATH

set -x HOMEBREW_INSTALL_CLEANUP 1
set GHQ_SELECTOR peco
alias be="bundle exec"
alias call="code"

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/naoyasakurai/google-cloud-sdk/path.fish.inc' ]; . '/Users/naoyasakurai/google-cloud-sdk/path.fish.inc'; end
