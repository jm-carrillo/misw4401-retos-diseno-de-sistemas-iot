# misw4401-retos-diseno-de-sistemas-iot

Reto 4: Capa de Datos

Pasos para desplegar la aplicacion web localmente y ejecutar las pruebas, utilizando la base de datos postgres desplegada en la nube:
- desplegar la base de datos y generar los datos de acuerdo a los pasos en el tutorial
- descomprimir el archivo postgresMonitoring.zip
- Ingresar la IP del servidor que tiene desplegada la base de datos postgres en el archivo settings, como se muestra a continuacion:
![settings](https://github.com/user-attachments/assets/49d0f057-20a3-41e9-9dd8-c5ba4b99d615)
- Abrir una terminal para instalar las librerias
- establecer en el archivo Pipfile, la version de python que se tiene instalada en la maquina local, como se muestra a continuacion:
![pipfile](https://github.com/user-attachments/assets/1b3297db-ee7e-47a1-bee9-e25d8bc14be0)
- Ejecutar los siguientes comandos:
- pipenv install
-  pipenv shell
- correr la applicacion con el siguiente comando: python manage.py runserver
- Abrir la siguiente URL: http://127.0.0.1:8000/login/
- Ingresar las siguientes credenciales:
- Usuario: pruebasIOT
- Contrasena: pruebas2021!
- Abrir Postman
- Realizar una peticion Get con el siguiente endpoint:
- http://localhost:8000/nueva-consulta/Temperatura?from=1624165200000&to=1626411599999&minTemp=10&maxTemp=18&minLat=1&maxLat=10&minLng=65&maxLng=75  
