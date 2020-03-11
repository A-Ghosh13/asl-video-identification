# combine data from various sources

TRAIN_DIR=newerSet

mkdir -p ${TRAIN_DIR}


for i in all_images2_copy/*; do
	c=`basename $i`
	c= "$(tr [A-Z] [a-z] <<< "$c")"
	echo "splitting $c"
	mkdir -p ${TRAIN_DIR}/$c
	for j in `ls $i/*.jpg`; do
	        echo $j
		mv $j ${TRAIN_DIR}/$c/
	done

done