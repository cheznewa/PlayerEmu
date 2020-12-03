mkdir -p $OUTPUT
convert -stroke black -fill \#${COLOR} -size 48x48 xc:none -draw "circle 24,24 48,24" -fill white -draw "polygon 12,12 12,36 36,24" $OUTPUT/play.png
convert -stroke black -fill \#${COLOR} -size 48x48 xc:none -draw "circle 24,24 48,24" -fill white -draw "rectangle 12,12 18,36 rectangle 30,12 36,36" $OUTPUT/pause.png
convert -stroke black -fill \#${COLOR} -size 18x18 xc:none -draw "circle 9,9 18,9" $OUTPUT/cur.png
convert -size 480x1 xc:gray $OUTPUT/line.png