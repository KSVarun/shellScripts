#/bin/bash

lastReadChapter=$(head -n 1 ~/Developer/shell/lotnb/readChapters.txt)
newChapterToRead=`expr $lastReadChapter + 1`
link=https://legendofnorthernblade.com/manga/legend-of-the-northern-blade-chapter-$newChapterToRead
res=$(curl $link 2> /dev/null)

if [ ${#res} != 0 ]
then
    echo 'New Chapter is available click -' $link
fi
