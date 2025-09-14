import destino.*
class Paquete {
  var property estado = false
  var property destino = puente
  
  method pago(_estado) {
    self.estado(_estado)
  }
  
  method estaPago() = estado
  
  method pagar() {
    self.pago(true)
  }

  method puedeSerEntregadoPor(_mensajero) {
    return self.destino().dejarPasar(_mensajero) && self.estaPago()
  }
}

class Paquetito inherits Paquete{
    override method estaPago() = true
    override method puedeSerEntregadoPor(_mensajero) = true
}

class Paqueton inherits Paquete {
    var property destinos = []
    var property pagos = [] 
    const importe = 100

    method agregarDestino(_destino) {
        self.destinos().add(_destino)
    }

    override method estaPago() {
       return self.pagos().sum({p => p}).equals(self.destinos().size() * importe)
    }

    override method pagar() {
        self.pagos().add(importe)
    }
}

const paquete = new Paquete()
const paquetito = new Paquetito()
const paqueton = new Paqueton()