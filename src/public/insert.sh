#xmlstarlet ed -L -s "/ChannelList" -t elem -n "channel" -i "title" -v "newTitle"  > channels.xml
# 
# variable1=$(xmlstarlet sel -t -v "/ChannelList/channel[1]/title" channels.xml) 
# use xmlstarlet editor do an inplace edit
xmlstarlet ed -i "/ChannelList/channel/title/" -v "NewTitle" > channels.xml

xmlstarlet ed -s //ChannelList/channel/ -t elem -n title -v "" \
  -i /ChannelList/channel/title/ -t attr -n value -v "NewTitle" \
  channels.xml > new.xml

xml ed --net ^
    -s /chksys/machine/registry -t elem -n key -v "" ^
    -i /chksys/machine/registry/key -t attr -n value ^
      -v "'C:\Program Files\Microsoft SQL Server'" ^
    -i /chksys/machine/registry/key -t attr -n path ^
      -v "HKLM\software\symantec\Symantec Endpoint Protection\AV\Exclusions\ScanningEngines" ^
    OLDFILE > NEWFILE