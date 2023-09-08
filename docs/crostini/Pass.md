# Pass Installation

## GPG Configuration

[password store](https://www.passwordstore.org/)
[definitive guide to password](https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1)


1. Generate a GPG key for the password
* Need to remember the password used for GPG as this will be used to access the password-store

```
gpg --full-gen-key
```

Note use the following config:
* RSA
* Key Size (3072)
* Key lifespan (0) i.e. does not expire

## Git Configuration

1. Initialise git username


```
git config --global user.name “github username”
```

2. Initialise git email address

Set up the email address
```
git config --global user.email “github email address”
```

## Pass Configuration

1. Install the package
```
sudo apt install -y pass
```

2. Initialise the password-store (use the email address associated with the gpg key i.e. `gpg -k`)
```
pass init [email address]
```

3. Initialise git repo for password-store
```
pass git init
```

4.  Insert a password e.g. store a password token with the name github
```
pass insert github
```
__NOTE:__ When prompted for a password - add the password/secret to be stored

## General Usage

1. Retrieve a secret from the command line
```
pass github
```

2. Retrieve a secret to the clipboard
```
pass -c github
```

3. Delete a secret
```
pass rm github
```


## ChromeOS Clipboard

1. Edit the bash file /usr/bin/pass
On ChromeOS the clipboard wont allow xclip to copy content. 
```
sudo vi /usr/bin/pass
```

2. Rename the exisiting clip function to clip2()
```
clip2() {
        # This base64 business is because bash cannot store binary data in a shell
        # variable. Specifically, it cannot store nulls nor (non-trivally) store
        # trailing new lines.
        local sleep_argv0="password store sleep on display $DISPLAY"
        pkill -f "^$sleep_argv0" 2>/dev/null && sleep 0.5 
        local before="$(xclip -o -selection "$X_SELECTION" 2>/dev/null | $BASE64)"
        echo -n "$1" | xclip -selection "$X_SELECTION" || die "Error: Could not copy data to the clipboard"
        (   
                ( exec -a "$sleep_argv0" bash <<<"trap 'kill %1' TERM; sleep '$CLIP_TIME' & wait" )
                local now="$(xclip -o -selection "$X_SELECTION" | $BASE64)"
                [[ $now != $(echo -n "$1" | $BASE64) ]] && before="$now"

                # It might be nice to programatically check to see if klipper exists,
                # as well as checking for other common clipboard managers. But for now,
                # this works fine -- if qdbus isn't there or if klipper isn't running,
                # this essentially becomes a no-op.
                #   
                # Clipboard managers frequently write their history out in plaintext,
                # so we axe it here:
                qdbus org.kde.klipper /klipper org.kde.klipper.klipper.clearClipboardHistory &>/dev/null

                echo "$before" | $BASE64 -d | xclip -selection "$X_SELECTION"
        ) >/dev/null 2>&1 & disown
        echo "Copied $2 to clipboard. Will clear in $CLIP_TIME seconds."
}
```

3. Add the following code as a new clip function
```
clip() {
  # input=$( cat "$@" )
  input=$( echo "$1" )
  input() { printf %s "$input" ;}
  known() { command -v "$1" >/dev/null ;}
  maybe() { known "$1" && input | "$@" ;}
  alive() { known "$1" && "$@" >/dev/null 2>&1 ;}
  
  # copy to tmux
  test -n "$TMUX" && maybe tmux load-buffer -
  
  # copy via X11
  test -n "$DISPLAY" && alive xhost && {
          maybe xsel -i -b || maybe xclip -sel c
  }

  # copy via OSC 52
  printf_escape() {
    esc=$1
    # test -n "$TMUX" -o -z "${TERM##screen*}" && esc="\033Ptmux;\033$esc\033\\"
    test -n "$TMUX" -o -z "${TERM##screen*}" && esc="\033P;\033$esc\033\\"
    printf "$esc"
  }

  len=$( input | wc -c ) 
  max=74994
  test $len -gt $max && echo "$0: input is $(( len - max )) bytes too long" >&2
  printf_escape "\033]52;c;$( input | head -c $max | base64 | tr -d '\r\n' )\a"
}
```

4. Quit Vi
Press the Esc key. Then enter
```
wqa
```
