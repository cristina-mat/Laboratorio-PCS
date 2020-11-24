#!/usr/bin/python
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json

cuentas = []
data = {}
with open('data.json') as f:
        data = json.load(f)
        
msg = MIMEMultipart()
message = "Hello! Soy Cristina Mata este correo es una practica. Saludos <3"
msg['From'] = data['user'] 
f = open("cuentas.sh","r")
linea = f.read()
cuentas = linea.split()
msg['To'] = ", ".join(cuentas)
msg['Subject'] = "Hello"
msg.attach(MIMEText(message, 'plain'))

try:
        server = smtplib.SMTP('smtp.office365.com:587')
        server.starttls()
        server.login(data['user'], data['pass'])
        server.sendmail(msg['From'], cuentas, msg.as_string())
        server.quit()
        print("successfully sent email to %s:" % (msg['To']))
except:
        print("SMTP error")
