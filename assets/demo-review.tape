Output assets/demo-review.gif
Set Shell bash
Set FontSize 15
Set Width 860
Set Height 650
Set Theme { "name": "demo", "black": "#1e1e2e", "red": "#f38ba8", "green": "#a6e3a1", "yellow": "#f9e2af", "blue": "#89b4fa", "magenta": "#cba6f7", "cyan": "#94e2d5", "white": "#cdd6f4", "brightBlack": "#585b70", "brightRed": "#f38ba8", "brightGreen": "#a6e3a1", "brightYellow": "#f9e2af", "brightBlue": "#89b4fa", "brightMagenta": "#cba6f7", "brightCyan": "#94e2d5", "brightWhite": "#cdd6f4", "background": "#1e1e2e", "foreground": "#cdd6f4", "cursor": "#f5e0dc", "selection": "#45475a" }
Set Padding 20
Set Framerate 20
Set TypingSpeed 40ms

Hide
Type "export PS1='$ ' && alias claude='bash assets/demo-review.sh' && clear"
Enter
Show

Sleep 300ms

Type@40ms "claude /crew-review"
Sleep 500ms
Enter

Sleep 15s
