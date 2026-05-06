import mensajeros.*

object puenteDeBrooklyn {
  method puedeEntrar(unMensajero) {
    return unMensajero.peso() <= 1000
  }
}
object matrix {
  method puedeEntrar(unMensajero) {
    return unMensajero.puedeLlamar()
  }
}