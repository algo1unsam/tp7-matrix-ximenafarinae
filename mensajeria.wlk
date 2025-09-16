import mensajeros.*

object mensajeria {
    var property contratados = []

    method contratar(mensajero) {
        self.contratados().add(mensajero)
    }

    method estaContratado(mensajero) = self.contratados().contains(mensajero)
    
    method despedir(mensajero) {
      self.contratados().remove(mensajero)
    }

    method despedirATodos() {
      self.contratados().clear()
    }

    method esGrande(mensajeros) = mensajeros.size() > 2

    method puedeEntregarPaquete(mensajero, paquete) = paquete.puedeSerEntregadoPor(mensajero)

    method pesoMensajero(mensajero) = mensajero.peso()

    method puedenEntregar(_paquete) = contratados.filter({m => self.puedeEntregarPaquete(m, _paquete)})
    
    method tieneSobrepeso() = contratados.sum({m => m.peso()}) > 500
}
