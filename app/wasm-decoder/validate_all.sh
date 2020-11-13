WASMS_DIR=$1

echo "CHECKSUMS" > check.txt
echo "SUCCESS $f" > success.txt
mkdir -p logs
for f in $WASMS_DIR/*.wasm
do

	m51=$(md5sum $f | awk '{print $1}' )

	name="$(basename -- $f)"
	echo $name $f $m51
	./decoder.out "$f"
    
	if [ -f "test.wasm" ]; then

		wasm2wat test.wasm -o t.wat -v > logs/"$name.logs.txt"

		m52=$(md5sum test.wasm | awk '{print $1}' )


		if [ $m51 != $m52 ]; then
			echo $m51 $m52 >> check.txt
			printf "\t$f not the same checksum\n" >> check.txt

			# getting wasm2wat output

			wasm2wat $f -o t1.wat -v > t1.logs
			wasm2wat test.wasm -o t2.wat -v  2> t.err.logs > t2.logs

			wasm-validate test.wasm > validation.txt

			DIFF=$(diff t1.logs t2.logs)
			ERRORS=$(cat t.err.logs)
			VALIDATION=$(cat validation.txt)
			printf "\t\n\nERROR: $ERRORS\n" >> check.txt
			printf "\t\n\VALIDATION: $VALIDATION\n" >> check.txt
			printf "\t\n\n$DIFF\n" >> check.txt
			
			cp t1.wat logs/$name.orig.wat 
			cp t2.wat logs/$name.wakoko.wat

			rm t1.wat t2.wat t1.logs t2.logs t.err.logs validation.txt
 
		else
			echo "SUCCESS $f" >> success.txt
		fi


		rm t.wat
		rm test.wasm
	else
		echo "$f failed to parse" >> check.txt
	fi

done