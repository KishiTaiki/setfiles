[33mcommit 649dd9d60453eb03e1d36ba1a0ce646a32115744[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: KishiTaiki <gansan-1230@ezweb.ne.jp>
Date:   Sun May 14 02:48:49 2017 +0900

    someupdate

[1mdiff --git a/vimrc/.vimrc b/vimrc/.vimrc[m
[1mindex 5d67163..fdaa832 100644[m
[1m--- a/vimrc/.vimrc[m
[1m+++ b/vimrc/.vimrc[m
[36m@@ -183,9 +183,6 @@[m [mimap <C-j> <esc>[m
 inoremap {<Enter> {}<Left><CR><ESC><S-o>[m
 inoremap [<Enter> []<Left><CR><ESC><S-o>[m
 inoremap (<Enter> ()<Left><CR><ESC><S-o>[m
[31m-inoremap < <><LEFT>[m
[31m-inoremap " ""<LEFT>[m
[31m-inoremap ' ''<LEFT>[m
 [m
 set wildmenu " コマンドモードの補完[m
 set history=5000 " 保存するコマンド履歴の数[m
[1mdiff --git a/xinitrc/.xinitrc b/xinitrc/.xinitrc[m
[1mindex 25b5c42..953d7fc 100644[m
[1m--- a/xinitrc/.xinitrc[m
[1m+++ b/xinitrc/.xinitrc[m
[36m@@ -16,7 +16,7 @@[m [mfcitx -rd &[m
 #wallpaper[m
 nitrogen --restore &[m
 compton &[m
[31m-[m
[32m+[m[32mdunst &[m
 #dunst[m
 #dunst &[m
 [m

[33mcommit 4cb2e44dfa7ddc9a8d90b4c657f960b10e45b22d[m
Author: KishiTaiki <gansan-1230@ezweb.ne.jp>
Date:   Fri May 12 16:24:04 2017 +0900

    some app

[1mdiff --git a/set.sh b/set.sh[m
[1mindex f874295..ba8ce3d 100755[m
[1m--- a/set.sh[m
[1m+++ b/set.sh[m
[36m@@ -2,7 +2,7 @@[m
 [m
 sudo pacman -S xorg-server xorg-server-utils xorg-xinit[m
 sudo pacman -Ss xf86-video-intel[m
[31m-sudo pacman -S zsh xmonad xmonad-contrib terminator neovim nitrogen openssh xmobar alsa-utils[m
[32m+[m[32msudo pacman -S zsh xmonad xmonad-contrib terminator neovim nitrogen openssh xmobar alsa-utils compton[m
 sudo pacman -S otf-ipafont fcitx-im fcitx-configtool fcitx-mozc[m
 git clone https://github.com/b4b4r07/zplug ~/.zplug[m
 git clone https://github.com/mzyy94/RictyDiminished-for-Powerline ~/.local/share/fonts[m
[36m@@ -32,4 +32,4 @@[m [mamixer sset Master unmute[m
 #tee /sys/class/backlight/acpi_video0/brightness <<< 5[m
 sudo tee /sys/class/backlight/intel_backlight/brightness <<< 4000[m
 [m
[31m-sudo pacman -S libreoffice[m
[32m+[m[32msudo pacman -S libreoffice slack-desktop bmuxd libplist ifuse libimobiledevice choqok[m
[1mdiff --git a/terminator/config b/terminator/config[m
[1mindex b097b88..a1712f7 100644[m
[1m--- a/terminator/config[m
[1m+++ b/terminator/config[m
[36m@@ -26,7 +26,7 @@[m
 [plugins][m
 [profiles][m
   [[default]][m
[31m-    background_darkness = 0.81[m
[32m+[m[32m    background_darkness = 0.8[m
     background_type = transparent[m
     cursor_color = "#aaaaaa"[m
     font = Ricty Diminished 20[m
[1mdiff --git a/xinitrc/.xinitrc b/xinitrc/.xinitrc[m
[1mindex 36baa9b..25b5c42 100644[m
[1m--- a/xinitrc/.xinitrc[m
[1m+++ b/xinitrc/.xinitrc[m
[36m@@ -1,5 +1,5 @@[m
 #!/bin/sh[m
[31m-[m
[32m+[m[32msudo iwconfig wlp2s0 power off &[m
 userresources=$HOME/.Xresources[m
 usermodmap=$HOME/.Xmodmap[m
 sysresources=/etc/X11/xinit/.Xresources[m
[36m@@ -18,7 +18,7 @@[m [mnitrogen --restore &[m
 compton &[m
 [m
 #dunst[m
[31m-dunst &[m
[32m+[m[32m#dunst &[m
 [m
 # merge in defaults and keymaps[m
 [m
[1mdiff --git a/xmodmap/.Xmodmap b/xmodmap/.Xmodmap[m
[1mindex 47af8f7..88d9150 100644[m
[1m--- a/xmodmap/.Xmodmap[m
[1m+++ b/xmodmap/.Xmodmap[m
[36m@@ -23,5 +23,8 @@[m [mkeycode 43 = h H Left Left[m
 keycode 44 = j J Down Down[m
 keycode 45 = k K Up Up[m
 keycode 46 = l L Right Right[m
[32m+[m[32mkeycode 41 = f F Escape Escape[m
[32m+[m[32mkeycode 100 = Super_R[m
[32m+[m[32mkeycode 40 = d D BackSpace[m
 !keycode 101= Escape[m
 [m
[1mdiff --git a/xmonad/.xmonad/xmonad-x86_64-linux b/xmonad/.xmonad/xmonad-x86_64-linux[m
[1mindex 57a19ca..6644ce6 100755[m
Binary files a/xmonad/.xmonad/xmonad-x86_64-linux and b/xmonad/.xmonad/xmonad-x86_64-linux differ
[1mdiff --git a/xmonad/.xmonad/xmonad.errors b/xmonad/.xmonad/xmonad.errors[m
[1mindex d741188..c6587a0 100644[m
[1m--- a/xmonad/.xmonad/xmonad.errors[m
[1m+++ b/xmonad/.xmonad/xmonad.errors[m
[36m@@ -4,11 +4,11 @@[m [mxmonad.hs:97:19: warning: [-Wdeprecations][m
     (imported from XMonad, but defined in XMonad.Config):[m
     Deprecated: "Use def (from Data.Default, and re-exported by XMonad and XMonad.Config) instead."[m
 [m
[31m-xmonad.hs:359:14: warning: [-Wdeprecations][m
[32m+[m[32mxmonad.hs:363:14: warning: [-Wdeprecations][m
     In the use of ‘defaultXPConfig’ (imported from XMonad.Prompt):[m
     Deprecated: "Use def (from Data.Default, and re-exported from XMonad.Prompt) instead."[m
 [m
[31m-xmonad.hs:377:37: warning: [-Wdeprecations][m
[32m+[m[32mxmonad.hs:381:37: warning: [-Wdeprecations][m
     In the use of ‘defaultConfig’[m
     (imported from XMonad, but defined in XMonad.Config):[m
     Deprecated: "Use def (from Data.Default, and re-exported by XMonad and XMonad.Config) instead."[m
[1mdiff --git a/xmonad/.xmonad/xmonad.hs b/xmonad/.xmonad/xmonad.hs[m
[1mindex bfa5191..73daf9f 100644[m
[1m--- a/xmonad/.xmonad/xmonad.hs[m
[1m+++ b/xmonad/.xmonad/xmonad.hs[m
[36m@@ -212,7 +212,11 @@[m [mmain = do[m
        `additionalKeysP`[m
        [[m
        --kicad[m
[31m-         ("M-n",spawn "kicad")[m
[32m+[m[32m       --  ("M-n",spawn "kicad")[m
[32m+[m[32m       --slack[m
[32m+[m[32m         ("M-s",spawn "slack")[m
[32m+[m[32m       --twitter[m
[32m+[m[32m       , ("M-t",spawn "choqok")[m
        --thunderbird[m
        , ("M-m",spawn "thunderbird")[m
        --display[m
[1mdiff --git a/xmonad/.xmonad/xmonad.o b/xmonad/.xmonad/xmonad.o[m
[1mindex 54108d2..a8c85f5 100644[m
Binary files a/xmonad/.xmonad/xmonad.o and b/xmonad/.xmonad/xmonad.o differ
[1mdiff --git a/xmonad/.xmonad/xmonad.state b/xmonad/.xmonad/xmonad.state[m
[1mindex 4d475f5..bf9fec2 100644[m
[1m--- a/xmonad/.xmonad/xmonad.state[m
[1m+++ b/xmonad/.xmonad/xmonad.state[m
[36m@@ -1 +1 @@[m
[31m-StateFile {sfWins = StackSet {current = Screen {workspace = Workspace {tag = "3", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 82 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Just (Stack {focus = 18874375, up = [], down = []})}, screen = S 0, screenDetail = SD {screenRect = Rectangle {rect_x = 0, rect_y = 0, rect_width = 2736, rect_height = 1824}}}, visible = [], hidden = [Workspace {tag = "4", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 [27262992]) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 95 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Just (Stack {focus = 25165840, up = [], down = []})},Workspace {tag = "2", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 [18874599]) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "1", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts True (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "9", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "5", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 107 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "8", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts True (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "6", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "7", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing}], floating = fromList []}, sfExt = [("SpawnOnce","SpawnOnce {unspawnOnce = fromList [\"$HOME/.dropbox-dist/dropboxd\",\"bash $HOME/.fehbg\",\"gnome-settings-daemon\",\"nm-applet\",\"xscreensaver -no-splash\"]}")]}[m
\ No newline at end of file[m
[32m+[m[32mStateFile {sfWins = StackSet {current = Screen {workspace = Workspace {tag = "2", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 [16777316]) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Just (Stack {focus = 23073841, up = [], down = [20971536]})}, screen = S 0, screenDetail = SD {screenRect = Rectangle {rect_x = 0, rect_y = 0, rect_width = 2736, rect_height = 1824}}}, visible = [], hidden = [Workspace {tag = "1", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 [16777223]) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Just (Stack {focus = 23078706, up = [], down = []})},Workspace {tag = "3", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 82 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Just (Stack {focus = 23075581, up = [], down = []})},Workspace {tag = "4", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 [27262992]) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 95 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "9", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "8", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts True (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "5", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 107 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "6", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing},Workspace {tag = "7", layout = "ModifiedLayout (AvoidStruts (fromList [U,D,R,L])) (ToggleLayouts False (ModifiedLayout (WithBorder 0 []) Full) (ModifiedLayout (Spacing 10) (ModifiedLayout (Gaps [(U,47),(D,11),(L,56),(R,56)] [U,D,L,R]) (Choose L (ResizableTall {_nmaster = 1, _delta = 1 % 201, _frac = 116 % 201, _slaves = []}) (Choose L (TwoPane (1 % 201) (116 % 201)) Simplest)))))", stack = Nothing}], floating = fromList []}, sfExt = [("SpawnOnce","SpawnOnce {unspawnOnce = fromList [\"$HOME/.dropbox-dist/dropboxd\",\"bash $HOME/.fehbg\",\"gnome-settings-daemon\",\"nm-applet\",\"xscreensaver -no-splash\"]}")]}[m
\ No newline at end of file[m
[1mdiff --git a/zshrc/.zshrc b/zshrc/.zshrc[m
[1mindex 57b7216..2e9a58a 100644[m
[1m--- a/zshrc/.zshrc[m
[1m+++ b/zshrc/.zshrc[m
[36m@@ -176,12 +176,10 @@[m [mexport PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH[m
 [m
 [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx [m
 alias ls='ls --color -F'[m
[31m-alias iphone='sudo ip link set enp0s20f0u1c4i2 up | sudo dhcpcd enp0s20f0u1c4i2 '[m
 alias relogin='exec $SHELL -l'[m
 alias office='libreoffice'[m
 alias vim='nvim'[m
 alias cd..='cd ..'[m
 alias sl='sl -aF'[m
[31m-alias mm='cmatrix'[m
[32m+[m[32malias mm='cmatrix -C cyan -b -u 1 -a '[m
 alias pdf='evince'[m
[31m-alias rewifi='sudo ip link set wlp2s0 down | sudo ip link set wlp2s0 up'[m
