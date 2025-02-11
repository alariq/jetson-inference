#DST=$1
#DST=pi@NanoPi-R5C:nanotracker
#DST=pi@nanopi:nanotracker
#DST=cat@lubancat:jetson-inference-test
DST=a@jetson:jetson-inference-test
echo "syncing to $DST"

# -c options might be useful if clocks are not the same
#
rsync -rzcP --exclude=.git\
    --exclude=.cache\
    --exclude=.ccls-cache\
    --exclude=.vscode\
    --exclude=build\
    --exclude=build-rknn\
    --exclude=data\
    --exclude=out\
    --exclude=docs\
    . $DST
