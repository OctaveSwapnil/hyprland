if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start Hyprland at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec dbus-run-session Hyprland
    end
end

function fish_right_prompt
  #intentionally left blank
 end

alias systemupdate='sudo pacman -Sy && sudo powerpill -Su && paru -Su && paru -Scc'
alias kernelupdate='cd ~/linux-tkg/ && makepkg -si' 
