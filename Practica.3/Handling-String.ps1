
function Show-Menu{
Read-Host "Bienvenido 
Pulse una Tecla para continuar"
Clear-Host

Write-Host "Aqui se muestra una lista de las opciones disponibles
introduzca el numero correspondiente de la opcion
que desees ejecutar"

Write-Host "1 -> Mostrar cadena"
Write-Host "2 -> Contar elementos de la cadena"
Write-Host "3 -> Convertir la cadena a Mayusculas"
Write-Host "4 -> Convertir la cadena a Minusculas"
Write-Host "5 -> Sustituir frases de la cadena"
Write-Host "6 -> Salir"
[int]$opcion = Read-Host "Seleccione una opcion"
return $opcion 
}

function Print-Cadena{ 
    Write-Host "$cadena"
}

function Length-Cadena{ 
    Write-Host $cadena.Length	
}

function Convertir-May{ 
    Write-Host $cadena.ToUpper()	
}


function Convertir-Min{ 
    Write-Host $cadena.ToLower()	 
}

function Replace-Cadena{ 
    $palabra1 = Read-Host "Ingresa los elementos de la cadena a remplazar"
    $palabra2 = Read-Host "Ingresa los elementos de la cadena que vas a remplazar"
    Write-Host $cadena.Replace("$palabra1", "$palabra2")
}


function salir{
exit 
}

$cadena = Read-Host "Ingresa una cadena de texto"

:Bucle do{

Switch (Show-Menu){
1{Print-Cadena;break}
2{Length-Cadena;break}
3{Convertir-May;break}
4{Convertir-Min;break}
5{Replace-Cadena;break}
6{Salir;break}
9{break Bucle}

}
}
while (0 -lt 1)
Clear-Host



