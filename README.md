# i3-rofi-zsh
Config files for i3, zsh and rofi. I added custom scripts for rofi. These configs used gruvbox color scheme. Also, i dissabled i3bar (you can toggle it with custom scortcut mod+shift+x). In i3bar i set tray output to none.

Now, about custom scripts.

`.local/bin/genu`-script with simple syntax for displaying menus through rofi.

About genu.

The modified gruvbox-dark-soft theme is used (only listview is left):
`.config/rofi/grznych.rasi`
The `rt` function accepts an array that specifies what will be displayed, how it will be displayed and what will happen when the corresponding menu item is selected. For instance:

```#   title        key command
ex=(Shutdown     wu  systemctl\ poweroff
    Reboot       ru  systemctl\ reboot
    Suspend      sa  systemctl\ suspend
    Lock         l   glock
    Reload\ i3   e   'i3-msg reload && dunstify i3:\ reload'
    Restart\ i3  t   i3-msg\ restart
    Config\ i3   c   gedit\ ~/.config/i3/config)`
```

The first column is the heading: what will be displayed.
The second column is the keys.
The first character is a hotkey: when you click on it, this menu item will be selected, also this character will be underlined in the header (if it is not the first character), for example: Shutdow̲n.
    Second character (optional):
        u so that the menu item is red;
        a so that the menu item is yellow.

The third column is the command to run.

Now, to display this menu, you need to pass the name of the array as a parameter: genu ex.

zsh-prompt

The `precmd` function in .zshrc is responsible for everything.

And now screenshots (as usual) 😀 

![Screenshot](screen.png?raw=true "Clear")
![Screenshot](screen_1.png?raw=true "Clear")
![Screenshot](screen_2.png?raw=true "Clear")
![Screenshot](screen_3.png?raw=true "Clear")
![Screenshot](screen_4.png?raw=true "Clear")
![Screenshot](screen_5.png?raw=true "Clear")





