import requests

Jugador  =  input ( "Ingresa el nombre del Jugador de Futbol Soccer a buscar:" )
APIKEY  =  input ( "Ingresa tu APIkey:" )

url = 'https://allsportsapi.com/api/football/?&met=Players&playerName='+ Jugador +'& APIkey=' + APIKEY

print(url)

Resultado  =  requests.get(url)
Datos  =  Resultado.json()


print(Datos)

import requests

APIKEY = input("Ingresa tu APIkey:") 
ID = input("Ingresa tu ID")

print("Calidad de Aire de china")


url = "https://api.aerisapi.com/airquality/beijing,cn?filter=china&client_id=" + ID + "&client_secret=" + APIKEY

Resultado = requests.get(url)
Datos=Resultado.json()

print(Datos)









