import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName

main = xmonad
    gnomeConfig {
            terminal = "mate-terminal"
          , modMask  = mod4Mask
          , layoutHook  = smartBorders (layoutHook gnomeConfig)
          , startupHook = setWMName "LG3D"
    }
