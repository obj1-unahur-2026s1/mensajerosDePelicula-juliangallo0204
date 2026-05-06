import vehiculos.*
import celular.*

object roberto {
    var vehiculo = bicicleta
    const pesoCorporal = 70

    method peso() {
        return pesoCorporal + vehiculo.peso()
    }
    method cambiarVehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
    method puedeLlamar() = false
}

object chuckNorris {
    method peso() = 80
    method puedeLlamar() = true
}

object neo {
    method peso() = 0
    method puedeLlamar() = celular.tieneCredito()
}