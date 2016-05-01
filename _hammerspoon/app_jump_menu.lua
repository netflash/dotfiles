-- cmd-shift-j modal "menu" for hot key jumps between apps.
--
-- I do this in a modal so the list of hot keys can be long without interfering
-- with applications own hot key mappings.
--

local utils = require "utils"

modal = hs.hotkey.modal.new({"cmd","shift"},'j')

function modal:entered()
    hs.alert.show(
"hot keys active: (exit: enter esc j) \
  c - chrome \
  e - evernote \
  f - finder \
  i - iterm \
  l - slack \
  s - spotify \
  m - mute microphone \
",
    999999
    )
end
function modal:exited() hs.alert.closeAll() end

-- close modal with any of these keys
modal:bind('','j', function() modal:exit() end)
modal:bind('','escape', function() modal:exit() end)
modal:bind('','return', function() modal:exit() end)

-- hotkeys while modal is active
modal:bind('','c', function() hs.application.launchOrFocus( "Google Chrome" )  ; modal:exit() end )
modal:bind('','e', function() hs.application.launchOrFocus( "Evernote.app" )   ; modal:exit() end )
modal:bind('','i', function() hs.application.launchOrFocus( "iTerm.app" )      ; modal:exit() end )
modal:bind('','f', function() hs.application.launchOrFocus( "Finder.app" )     ; modal:exit() end )
modal:bind('','s', function() hs.application.launchOrFocus( "Spotify.app" )    ; modal:exit() end )
modal:bind('','l', function() hs.application.launchOrFocus( "Slack.app" )      ; modal:exit() end )
modal:bind('','m', function() utils.toggleMicrophoneMute()                     ; modal:exit() end )