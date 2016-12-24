# .profile: POSIX-compatible shell login script

# Set default values for required environment variables
LOGNAME=${LOGNAME:-${USER}}
LOGNAME=${LOGNAME:-$(id -un)}
PATH=${PATH:-/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin}
SHELL=${SHELL:-$(getent passwd  "$LOGNAME" | cut -d: -f7)}
XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/run/user/${LOGNAME}}

# Execute a non-login shell with the appropriate environment
exec s6-envdir "$XDG_RUNTIME_DIR"/env "$SHELL"
