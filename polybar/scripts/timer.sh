[module/timer]

type = custom/script

exec = /path/to/polybar-timer.sh tail 'TIMER' 5
tail = true

click-left = /path/to/polybar-timer.sh new 25 'Pomo session' 'notify-send "Session finished"' ; /path/to/polybar-timer.sh update %pid%
click-middle = /path/to/polybar-timer.sh cancel ; /path/to/polybar-timer.sh update %pid%
click-right = /path/to/polybar-timer.sh new 5 'Pomo break' 'notify-send "Break finished"' ; /path/to/polybar-timer.sh update %pid%
scroll-up = /path/to/polybar-timer.sh increase 60 || /path/to/polybar-timer.sh new 1 'TIMER:' 'notify-send -u critical "Timer expired."' ; /path/to/polybar-timer.sh update %pid%
scroll-down = /path/to/polybar-timer.sh increase -60 ; /path/to/polybar-timer.sh update %pid%
