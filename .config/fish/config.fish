if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
