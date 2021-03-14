read -p "Cuantas veces quieres ejecutar el programa:" x
while [$i -le $x] 
do	
	read -p "A: Introduce un Numero Mayor que B:" a
	read -p "B: Introduce otro Numero pero menor que A:" b
	read -p "Introduce operacion a ejecutar [Suma/Resta/Multiplicacion/Divicion]:" operacion
	if [$a -gt $b ]
	then
	    case $operacion in
			let "i=$i+1"
	        "Suma")
	            echo "$a + $b = [$a+$b]" ;;
	        "Resta")
	            echo "$a - $b = [$a-$b]" ;;
	        "Multiplicacion")
	            echo "$a * $b = [$a*$b]" ;;            
	        "Divicion")
	            echo "$a / $b = [$a/$b]" ;;
	        *)
	        echo "ERROR"
    	    echo "Comando desconocido";;
    	esac
	else
    	echo "Los valores son Incorrectos"
	fi
done	