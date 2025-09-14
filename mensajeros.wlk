import wollok.vm.*
import transporte.*

class Mensajero {
  var property peso
  var property transporte

  method peso() {
    return peso + transporte.peso()
  }
  
}

const morfeo = new Mensajero(peso= 90, transporte= camion)

const trinity = new Mensajero(peso= 900, transporte= sinTransporte)

const neo = new Mensajero(peso= 0, transporte= sinTransporte)
