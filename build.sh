#!/usr/bin/sh

OUTPUT=initexi
SOURCE=sources
echo -e "#!/bin/sh\n" | tee $OUTPUT

cd $SOURCE
for i in $(ls)
do
    echo -e "\necho $(ls -l $i) 1>&2" | tee -a ../$OUTPUT
    echo "cat >$i <<'__ENDOF$i'" | tee -a ../$OUTPUT
    cat $i | tee -a ../$OUTPUT
    echo -e "\n__ENDOF$i" | tee -a ../$OUTPUT
done
cd ..
chmod a+x $OUTPUT
    
