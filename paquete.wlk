import destinos.*
object paquete {
    var estaPago = true
    var destino = puenteDeBrooklyn

    method precio() = 50
    method estaPago() = estaPago
    method puedeSerEntregado(unMensajero) {
        return self.estaPago() && destino.puedeEntrar(unMensajero)
    }
    method cambiarDestino(unDestino) {
        destino = unDestino
    }
    method cancelarPago() {
        estaPago = false
    }
    method pagar() {
        estaPago = true
    }
}

object paquetito {
    var destino = puenteDeBrooklyn

    method precio() = 0
    method estaPago() = true
    method puedeSerEntregado(unMensajero) {
        return destino.puedeEntrar(unMensajero)
    }
    method cambiarDestino(unDestino) {
        destino = unDestino
    }
}

object paquetonViajero {
    const destinos = []
    var dineroPagado = 0

    method precio() = destinos.size() * 100
    method estaPago() {
        return dineroPagado >= self.precio()
    }
    method pagarMonto(unMonto) {
        dineroPagado = dineroPagado + 1.max(unMonto).min(200)
    }
    method puedeSerEntregado(unMensajero) {
        return self.estaPago() && destinos.all({ destino => destino.puedeEntrar(unMensajero) })
    }
    method añadirDestino(unDestino) {
        destinos.add(unDestino)
    }
}