atget id id

data p "hola" id id
send p

loop
read mens
rdata mens tipo valor1 valor2 valor3
if(tipo == "alerta")
   cprint "Alerta en: longitud" valor1 ", latitud: " valor2 " | generado por sensor: " valor3
   
end
if(tipo == "critico")
   cprint "Nodo descargado en: longitud" valor1 ", latitud: " valor2 " | generado por sensor: " valor3
   data p "stop"	
   send p
   wait 1000
   stop
end

if(tipo == "stop")
   cprint "Nodo detenido en: longitud" valor1 ", latitud: " valor2 " | generado por sensor: " valor3
   data p "stop"	
   send p
   wait 1000
   stop
end


wait 100