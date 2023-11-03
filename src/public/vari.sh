variable1=$(xmlstarlet sel -t -v "/ChannelList/channel[1]/title" channels.xml)
variable2=$(xmlstarlet sel -t -v "/ChannelList/channel[2]/title" channels.xml)
echo The title is $variable1
echo The second title is $variable2