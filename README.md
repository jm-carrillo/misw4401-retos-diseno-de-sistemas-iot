# misw4401-retos-diseno-de-sistemas-iot

Este es el repositorio para almacenar el codigo desarrollado por el grupo 9-1 conformado por Jorge Carrillo y Juan Sebastian Becerra.

Adjunto a este archivo se encuentra la carpeta ***reto_capa_dispositivos/NodeMCU_Mosquito_SSL_Reto*** y en esta carpeta se encuentra el codigo fuente ***NodeMCU_Mosquito_SSL_Reto.ino*** para validar el reto para detectar la intesidad luminca.

Adicional se encuentra el archivo ***secrets.h*** para poder realizar el ingreso a la plataforma Mosquitto.

Como cualquier programa de extensión ***.ino*** se puede abrir desde el IDE de arduino donde se verificar el codigo y realizar su inspección. A continuación se presentan las líneas necesarias de cambio para ejecutar el archivo:

```
//Conexión a Wifi
//Aquí colocas el nombre de la red a la que te vas a conectar
const char ssid[] = "{{nombre red wifi}}";
//Aquí colocas la contraseña de la red a la que te vas a conectar
const char pass[] = "{{clave red wifi}}";

//Usuario uniandes sin @uniandes.edu.co
#define HOSTNAME "{{usuario uniandes}}"

//Conexión a Mosquitto, estas dos líneas si se dejan exactamente como están
const char MQTT_HOST[] = "iotlab.virtual.uniandes.edu.co";
const int MQTT_PORT = 8082;


//Usuario uniandes sin @uniandes.edu.co
const char MQTT_USER[] = "{{usuario uniandes}}";
//Contraseña de MQTT que recibió por correo
const char MQTT_PASS[] = "{{codigo estudiante}}";
const char MQTT_SUB_TOPIC[] = HOSTNAME "/";
//Tópico al que se enviarán los datos de humedad
const char MQTT_PUB_TOPIC1[] = "humedad/{{nombre_ciudad}}/" HOSTNAME;
//Tópico al que se enviarán los datos de temperatura
const char MQTT_PUB_TOPIC2[] = "temperatura/{{nombre_ciudad}}/" HOSTNAME;
// NUEVA IMPLEMENTACION *****************************************************
//Tópico al que se enviarán los datos de luminosidad
const char MQTT_PUB_TOPIC3[] = "luminosidad/{{nombre_ciudad}}/" HOSTNAME;
```

Y este bloque de codigo toma las medidas del fotoresistor [OSOYOO Ligth sensor](https://osoyoo.com/2021/08/21/arduino-graphic-programming-learning-kit-lesson-7-light-detect-module/) y lo convierte a lux que es la unidad derivada del Sistema Internacional de Unidades para la iluminancia o nivel de iluminación.​​

```
int sensorRawToLux(int raw){
  // Conversion valores analogos de fotoresistencia a Lux
  float Vout = float(raw) * (VIN / float(1023)); // Valores analogos a voltaje
  float RLDR = (R * (VIN - Vout))/Vout; // Voltage a resistance
  int lux = 500/(RLDR/1000); // Conversion de resistencia a lux
  return lux;
}
```

Al ejecutar el archivo mencionado los datos se van a cargar en la nube, es decir, se guardan los datos recolectados en tiempo real.