declare -A FILES

FILES=( 
  ["bspwm"]=~/.config/bspwm/bspwmrc
  ["polybar"]=~/.config/polybar/config.ini
  ["sxhkd"]=~/.config/sxhkd/sxhkdrc
  ["nvim"]=~/.config/nvim/init.lua
  ["emacs"]=~/.config/doom/config.org
)

gen_files_list()
{
  for file in "${!FILES[@]}"
  do
    echo "$file"
  done
}

choice=$(echo "$(gen_files_list)" | rofi -dmenu -p "confedit:")
if [ "$choice" ]; then
   emacsclient -c ${FILES[$choice]}  
else
  echo "Program terminated." && exit 0
fi
