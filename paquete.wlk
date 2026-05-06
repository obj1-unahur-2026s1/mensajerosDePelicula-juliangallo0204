import destinos.*
object paquete {
    var estaPago = true
    var destino = puenteDeBrooklyn

    method estaPago() = estaPago
    method puedeSerEntregado(unMensajero) {
        self.estaPago() && destino.puedeEntrar(unMensajero)
    }
    method cambiarDestino(unDestino) {
        destino = unDestino
    }
}