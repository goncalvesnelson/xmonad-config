# xmonad-config
xmonad-config is the [xmonad](http://xmonad.org/) configuration used by Vic Fryzel.


## Introduction

If you are unfamiliar with xmonad, it is a tiling window manager that is
notoriously minimal, stable, beautiful, and featureful.  If you find yourself
spending a lot of time organizing or managing windows, you may consider trying
xmonad.

However, xmonad can be somewhat difficult to configure if you're new to
Haskell or even to xmonad itself.

This project contains a completely working and very usable xmonad
configuration "out of the box".  If you are just starting out with xmonad,
this will give you a configuration that I personally use for around 12 hours
every day.  Thought has been put into the colors, key bindings, layouts,
and supplementary scripts to make life easier.

This project is also recommended for advanced xmonad users, who may just not
want to reinvent the wheel.  All source provided with this project is well
documented and simple to customize.

![Screenshot of xmonad-config](https://raw.github.com/vicfryzel/xmonad-config/master/screenshot.png)
For source code, or to contribute, see the
[xmonad-config project page](http://github.com/vicfryzel/xmonad-config).


## Requirements

* xmonad 0.9.1 or 0.9.2
* xmonad-contrib 0.9.1 or 0.9.2
* [xmobar 0.11.1 or 0.13](http://projects.haskell.org/xmobar/)
* [trayer 1.0](http://fbpanel.sourceforge.net/)
* [dmenu 4.0](http://tools.suckless.org/dmenu)/
* [dmenu_path_c](https://aur.archlinux.org/packages.php?ID=38035)
* [yeganesh 2.2](http://dmwit.com/yeganesh/)
* [scrot 0.8](http://freshmeat.net/projects/scrot/)

### Installing requirements on [Arch Linux](http://www.archlinux.org/)

    sudo pacman -S xmonad xmonad-contrib xmobar trayer scrot \
        dmenu dmenu_path_c cabal-install
    cabal update
    cabal install --global yeganesh

### Installing requirements on [Ubuntu Linux](http://www.ubuntu.com/)

    sudo aptitude install xmonad libghc6-xmonad-contrib-dev xmobar trayer \
        suckless-tools scrot cabal-install
    cabal update
    cabal install --global yeganesh
    

## Installation

Installing xmonad-config is a matter of backing up any xmonad configuration
you may already have, cloning the git repository, and updating your PATH.

    cd
    mv .xmonad .xmonad.orig
    git clone git@github.com:goncalvesnelson/xmonad-config.git .xmonad
    echo "export PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin" >> ~/.bashrc
    source ~/.bashrc

Once xmonad-config is installed, you also need to ensure you can actually
start xmonad.  The mechanism to do this varies based on each environment, but
here are some instructions for some common login managers.


### Using xmonad with mate in Linux Mint. Thanks [fcostin](https://github.com/fcostin/xmonad_and_mate.git)
    cp mate/xmonad.desktop /usr/share/applications/xmonad.desktop
    cp mate/xmonad-mate.desktop /usr/share/xsessions/xmonad-mate.desktop
    mateconftool-2 -s /desktop/mate/session/required_components/windowmanager xmonad --type string

### Starting xmonad from xdm, kdm, or gdm

    echo xmonad >> ~/.xsession
    # Note: this method will start no programs in your new session upon login.
    # To get a terminal in your next session, press Alt+Shift+Enter.
    # Logout, login from xdm/kdm/gdm

### Starting xmonad from slim

    ln -s ~/.xmonad/xinitrc ~/.xinitrc
    # Logout, login from slim


## Keyboard shortcuts

After starting xmonad, use the following keyboard shortcuts to function in
your new window manager.  I recommend you print these out so that you don't
get stranded once you logout and back in.

* Win+Shift+Return: Start a terminal
* Win+Ctrl+l: Lock screen
* Win+p: Start dmenu.  Once it comes up, type the name of a program and enter
* Win+Shift+p: Take screenshot in select mode. Click or click and drag to select
* Win+Ctrl+Shift+p: Take fullscreen screenshot. Supports multiple monitors
* Win+Shift+c: Close focused window
* Win+Space: Change workspace layout
* Win+Shift+Space: Change back to default workspace layout
* Win+n: Resize viewed windows to the correct size
* Win+Tab: Focus next window
* Win+j: Focus next window
* Win+k: Focus previous window
* Win+m: Focus master window
* Win+Return: Swap focused window with master window
* Win+Shift+j: Swap focused window with next window
* Win+Shift+k: Swap focused window with previous window
* Win+h: Shrink master window area
* Win+l: Expand master window area
* Win+t: Push floating window back into tiling
* Win+,: Increment number of windows in master window area
* Win+.: Decrement number of windows in master window area
* Win+q: Restart xmonad. This reloads xmonad configuration, does not logout
* Win+Shift+q: Quit xmonad and logout
* Win+[1-9]: Switch to workspace 1-9, depending on which number was pressed
* Win+Shift+[1-9]: Send focused window to workspace 1-9
* Win+w: Focus left-most monitor (Xinerama screen 1)
* Win+e: Focus center-most monitor (Xinerama screen 2)
* Win+r: Focus right-most monitor (Xinerama screen 3)
* Win+Shift+w: Send focused window to workspace on left-most monitor
* Win+Shift+e: Send focused window to workspace on center-most monitor
* Win+Shift+r: Send focused window to workspace on right-most monitor
* Win+Left Mouse Drag: Drag focused window out of tiling
* Win+Right Mouse Drag: Resize focused window, bring out of tiling if needed
* Win+i: Start Pidgin
* Win+v: Start emacs
* Win+c: Start Chromium-browser
* Win+f: Start Firefox
* Win+s: Start System Monitor

## Personalizing or modifying xmonad-config

Once cloned, xmonad-config is laid out as follows.

All xmonad configuration is in ~/.xmonad/xmonad.hs.  This includes
things like key bindings, colors, layouts, etc.  You may need to have some
basic understanding of [Haskell](http://www.haskell.org/haskellwiki/Haskell)
in order to modify this file, but most people have no problems.

Most of the xmobar configuration is in ~/.xmonad/xmobar.hs.

All scripts are in ~/.xmonad/bin/.  Scripts are provided to do things like
take screenshots, start the system tray, start dmenu, or fix your multi-head
layout after a fullscreen application may have turned off one of the screens. 

Colors set in the xmobar config and dmenu script are meant to coincide with the
[IR_Black terminal and vim themes](http://blog.infinitered.com/entries/show/6).
