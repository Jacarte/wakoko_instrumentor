WASMS_DIR=$1

echo "CHECKSUMS" > check.txt
mkdir -p logs
for f in $WASMS_DIR/*.wasm
do

	m51=$(md5sum $f | awk '{print $1}' )

	name="$(basename -- $f)"
	echo $name $f $m51
	./decoder.out $f
    
	if [ -f "test.wasm" ]; then

		wasm2wat test.wasm -o t.wat -v > logs/"$name.logs.txt"

		m52=$(md5sum test.wasm | awk '{print $1}' )

		echo $m51 $m52 >> check.txt

		if [ $m51 != $m52 ]; then
			printf "\t$f not the same checksum\n" >> check.txt

			# getting wasm2wat output

			wasm2wat $f -o t1.wat -v > t1.logs
			wasm2wat test.wasm -o t2.wat -v > t2.logs

			DIFF=$(diff t1.logs t2.logs)
			printf "\t\n\n$DIFF\n" >> check.txt
			rm t1.wat t2.wat t1.logs t2.logs
		fi


		rm t.wat
		rm test.wasm
	else
		echo "$f failed to parse" >> check.txt
	fi

done