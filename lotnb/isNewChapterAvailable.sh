#/bin/bash

readChaptersPath=~/Developer/shell/lotnb/readChapters.txt
lastReadChapter=$(head -n 1 $readChaptersPath)
newChapterToRead=`expr $lastReadChapter + 1`
link=https://legendofnorthernblade.com/manga/legend-of-the-northern-blade-chapter-$newChapterToRead
res=$(curl $link 2> /dev/null)

if [ ${#res} != 0 ]
then
    echo 'New Chapter is available click -' $link
    echo "$newChapterToRead\n$(cat $readChaptersPath)" > $readChaptersPath
fi
