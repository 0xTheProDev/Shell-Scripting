echo "Enter Background Color"
read bgcolor
echo "Enter Foreground Color"
read fgcolor
cmd=$(setterm -term linux -back $bgcolor -fore $fgcolor -clear)
