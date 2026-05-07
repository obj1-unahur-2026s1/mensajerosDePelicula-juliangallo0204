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
    method esGrande() {
        mensajeria.size() > 2
    }
    method puedeSerEntregadoPorElPrimerEmpleado() {
        paquete.puedeSerEntregado(self.primerEmpleado())
    }
    method primerEmpleado() = mensajeria.first()
    method pesoDelUltimoEmpleado() {
        self.ultimoEmpleado().peso()
    }
    method ultimoEmpleado() = mensajeria.last()

}