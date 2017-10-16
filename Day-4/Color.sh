echo "Enter Background Color"
read bgcolor
echo "Enter Foreground Color"
read fgcolor
setterm -term linux -back $bgcolor -fore $fgcolor -clear
