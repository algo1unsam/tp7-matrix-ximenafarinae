object morfeo {
  var property pesoPropio = 90
  var property transporte = camion
  
  method peso() = transporte.peso() + pesoPropio
}

object trinity {
    var property pesoPropio = 900

    method peso() = pesoPropio
    
}

object neo {
    var property pesoPropio = 80
    
    method peso() = pesoPropio
  
}

object camion {
  var property acoplados = 1
  
  method peso() = acoplados * 500
}

object monopatin {
  method peso() = 1
}

object puente {
  method dejarPasar(mensajero) = mensajero.peso() < 1000
}

object paquete {
  var property estado = false
  var property destino = puente
  
  method pago(_estado) {
    self.estado(_estado)
  }
  
  method estaPago() = estado
  
  method pagar() {
    self.pago(true)
  }

  method puedeSerEntregadoPor(mensajero) {
    return self.destino().dejarPasar(mensajero) && self.estaPago()
  }
}