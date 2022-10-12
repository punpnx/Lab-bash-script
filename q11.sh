for file in $(find . -type f -name "p*.c" | tac)
do
    trimmedName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    if [ -f $trimmedName ] #progA progB
    then 
        ans=$(./$trimmedName)
        if [ $ans = 20 ]
            then
                point=10
        else
            point=7
        fi
    else #progC
        point=5
    fi
    printf "%s      %s\n" $trimmedName $point
done
