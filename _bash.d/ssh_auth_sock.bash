# https://gist.github.com/admackin/4507371

_ssh_auth_save() {
    #ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh-auth-sock.$HOSTNAME"
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh-auth-sock"
}
#alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'
#alias tmux='_ssh_auth_save ; export HOSTNAME=$(hostname) ; tmux'
alias screen='_ssh_auth_save ; screen'
alias tmux='_ssh_auth_save ; tmux'