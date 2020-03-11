# split into train and validation set

TRAIN_DIR=val

for i in train/*; do

    c=`basename $i`

    echo "splitting $c"

    mkdir -p ${TRAIN_DIR}/$c
    for j in `ls $i/* | gshuf | head -n 20`; do
        echo $j
	mv $j ${TRAIN_DIR}/$c/
    done

done




