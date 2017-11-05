ffmpeg -i $1 \
    -vcodec libx264 -profile:v main -level 3.1 -preset fast -crf 24 -x264-params ref=4 \
    -vf subtitles=${1/mp4/srt} \
    -acodec copy \
    -movflags +faststart -vf "scale=720:-1:flags=lanczos" \
    ${1/mp4/ipad.mp4}
