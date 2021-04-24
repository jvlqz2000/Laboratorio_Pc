#!/usr/bin/env python3
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json

 

data = {}
with open('pass.json') as f:
        data = json.load(f)
# create message object instance
msg = MIMEMultipart()

 

message = "Enviado desde la clase de las 12pm a la 1:50 pm del 27/03/21"

 

# setup the parameters of the message

 

msg['From'] = data['user']
receipents = ["jose.hernandezsal@uanl.edu.mx"]
msg['To'] = ", ".join(receipents)
msg['Subject'] = "Salu2"

 

# add in the message body
msg.attach(MIMEText(message, 'plain'))

 

#create server
server = smtplib.SMTP('smtp.office365.com:587')

 

server.starttls()

 

# Login Credentials for sending the mail
server.login(data['user'], data['pass'])

 


# send the message via the server.
server.sendmail(msg['From'], receipents, msg.as_string())

 

server.quit()

 

print("successfully sent email to %s:" % (msg['To']))