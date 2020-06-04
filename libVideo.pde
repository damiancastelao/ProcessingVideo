// importamos la libreria de video
import processing.video.*;

void setup() {
  // definimos la ventana de la salida
  // no la usaremos para el listado
  size(320, 180);

  // definimos un Array de String
  // para guardar las camaras configuradas en el ordenador
  // list() es un metodo de la clase Capture, definido en la libreria
  // devuelve un array con todas las camaras
  String[] cameras = Capture.list();

  // si la longitud del array es cero
  // es que no hay camaras disponibles
  if (cameras.length == 0) {
    println("No hay camaras disponibles para la captura.");
    exit();
  // si hay camaras disponibles, recorro el array
  } else {
    println("Cameras disponibles:");
    for (int i = 0; i < cameras.length; i++) {
      // muestro el indice y la definicion
      // de esta manera podre acceder a la camara que quiero
      println(i + ":" + cameras[i]);
    }
  }
}

void draw() {}
