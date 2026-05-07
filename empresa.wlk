import mensajeros.*
import paquete.*

object empresaDeMensajeria {
    const mensajeria = []

    method contratar(unMensajero) {
        mensajeria.add(unMensajero)
    }
    method despedir(unMensajero) {
        mensajeria.remove(unMensajero)
    }
    method despedirATodos() {
        mensajeria.clear()
    }
    method esGrande() = mensajeria.size() > 2
    method puedeSerEntregadoPorElPrimerEmpleado(unPaquete) = unPaquete.puedeSerEntregado(self.primerEmpleado())
    method primerEmpleado() = mensajeria.first()
    method pesoDelUltimoEmpleado() = self.ultimoEmpleado().peso()
    method ultimoEmpleado() = mensajeria.last()
    method contieneMensajero(unMensajero) = mensajeria.contains(unMensajero)
    method noTieneEmpleados() = mensajeria.isEmpty()
}