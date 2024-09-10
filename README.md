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


Pasos para desplegar en instancia 
- Se debe obtener el zip en la maquina con el siguiente comando: 
  ```
  wget https://github.com/jm-carrillo/misw4401-retos-diseno-de-sistemas-iot/raw/main/reto_capa_datos/postgresMonitoring.zip -O server2.zip
  ```
- Luego se descomprime el archivo con ``` unzip server2.zip```
- Ingresar a la carpeta del proyecto, en este caso es /postgresMonitoring/realtimeMonitoring
  ![imagen](https://github.com/user-attachments/assets/b95ee012-e2d5-48fc-8df4-94e0c83ed476)
- Iniciar el ambiente de python con ``` pipenv shell```
  Nota: en caso de no funcionar este comando cambie la version de python a 3.8 en el el archivo Pipfile, lo puede hacer mediante la herramienta nano de la consola
- Instalar dependecias ``` pipenv install```
- Iniciar el servidor con ```python manage.py runserver 0.0.0.0:8000```
  ![imagen](https://github.com/user-attachments/assets/196a9785-df68-44d7-bb51-5492c2fe24bd)
- Abrir Postman
- Realizar una peticion Get con el siguiente endpoint:
- http://<ip-maquina>:8000/nueva-consulta/Temperatura?from=1624165200000&to=1626411599999&minTemp=10&maxTemp=18&minLat=1&maxLat=10&minLng=65&maxLng=75
  Nota: debido a que las ip cambian, la base de datos debe modificar el host de apuntamiento
  ![imagen](https://github.com/user-attachments/assets/0abfd3f7-2dd9-406b-85bc-6da150cc9e9e)
  ![imagen](https://github.com/user-attachments/assets/3d330b2b-d08a-4836-8ec1-a8bfbead0430)



