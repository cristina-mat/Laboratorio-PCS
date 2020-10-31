import pandas as pd
import requests
from bs4 import BeautifulSoup
from tabulate import tabulate

res = requests.get("https://es.wikipedia.org/wiki/Anexo:Los_100_mejores_vocalistas_del_metal_de_todos_los_tiempos_seg%C3%BAn_Hit_Parader")
print(res)
soup = BeautifulSoup(res.content,'lxml')
table = soup.find_all('table')[0] 
df = pd.read_html(str(table))
print( tabulate(df[0], headers='keys', tablefmt='psql') )
