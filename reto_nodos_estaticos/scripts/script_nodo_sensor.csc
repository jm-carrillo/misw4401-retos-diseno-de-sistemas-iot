set ant 999
set ite 0
battery set 100

atget id id
getpos2 lonSen latSen

loop
wait 100
read mens
rdata mens tipo valor

if((tipo=="hola") && (ant == 999))
   set ant valor
   data mens tipo id
   send mens * valor
end

if(tipo=="alerta")
   send mens ant
end

if(tipo=="stop")
   cprint "Nodo detenido. Se recibio mensaje indicando que otro sensor de la red se ha detenido"
   data mens "stop" id
   send mens * ant   
   stop
end

delay 10

areadsensor tempSen
rdata tempSen SensTipo idSens temp

if(temp>30)
   data mens "alerta" lonSen latSen id
   send mens ant
   inc ite
   print ite
   set y ite/20
   int x y       
   if(y==x)
      cprint "Numero de transmision de mensajes de alerta = " ite
   end
   if(ite == 1000)      
      cprint "Nodo detenido. El sensor ha enviado 1000 mensajes de alerta"       
      data mens "stop" lonSen latSen id
      send mens ant
      data mens "stop" id
      send mens * ant
      stop      
   end
end

battery bat
if(bat<5)
   data mens "critico" lonSen latSen id
   send mens ant
end

