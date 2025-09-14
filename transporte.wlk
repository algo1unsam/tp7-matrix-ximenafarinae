class Transporte {
    method peso() {}
}

class SinTransporte inherits Transporte {
    override method peso() = 0
}

class Camion inherits Transporte {
    var property acoplados
    const property pesoPorAcoplado

    override method peso() = acoplados * pesoPorAcoplado
}
const camion = new Camion(acoplados= 1, pesoPorAcoplado= 500)

const monopatin = new Transporte()

const sinTransporte = new SinTransporte()