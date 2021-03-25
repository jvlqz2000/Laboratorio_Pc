from bs4 import BeautifulSoup as bs
import requests

def Donde_Ir_Mty():
    url ="https://www.tripadvisor.com.mx/Attractions-g150782-Activities-Monterrey_Northern_Mexico.html"
    page = requests.get(url)
#    print(page.status_code )
    soup=bs(page.content, "html.parser")
    Lugar = soup.find_all("div", class_="_1gpq3zsA _1zP41Z7X")
    
    Lugares = list()
    for i in Lugar:
        Lugares.append(i.text)
    #print(Lugares)
    for i in Lugares:
        print(i)
        
print("Lista de los 30 Mejor Lugares para Conocer de Monterrey, Nuevo Leon:")
Donde_Ir_Mty()
