tmp=$(mktemp -d)
convert -size 48x48 xc:none $tmp/res.png
convert -gravity center -background none $tmp/res.png $ICONSKIT/play.png $tmp/res.png $ICONSKIT/line.png +append $tmp/a.png
ffmpeg -y -i "$1" -i $tmp/a.png -i $ICONSKIT/cur.png -filter_complex "[0]scale=768x576[g],[g][1]overlay=0:500[k],[k][2]overlay=144+(t*480/${TIME}):516[f]" -map "[f]" -map 0:1  -vcodec libx264 -acodec aac "$2_play.avi"
convert -gravity center -background none $tmp/res.png $ICONSKIT/pause.png $tmp/res.png $ICONSKIT/line.png +append $tmp/b.png
ffmpeg -y -i "$1" -i $tmp/b.png -i $ICONSKIT/cur.png -filter_complex "[0]scale=768x576[g],[g][1]overlay=0:500[k],[k][2]overlay=144+(t*480/${TIME}):516[f]" -map "[f]" -map 0:1 -vcodec libx264 -acodec aac "$2_play.avi"