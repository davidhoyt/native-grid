#!/bin/sh

TOP=$(dirname $0)

#Get the initial version
. ${TOP}/version.sh

if [ -d .git ]; then
    test -d .git/hooks/ || mkdir -p ./git/hooks/
    OUTPUT=.git/hooks/post-commit 

    echo "#!/bin/sh"      > $OUTPUT
    echo "./version.sh"  >> $OUTPUT
fi

