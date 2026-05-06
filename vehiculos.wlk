object bicicleta {
    method peso() = 5
}

object camion {
    var acoplados = 1
    const pesoPropio = 100

    method peso() {
        return pesoPropio + self.pesoAcoplados()
    }
    method pesoAcoplados() = acoplados * 500
    method cambiarAcoplados(cantidad) {
        acoplados = (cantidad.max(1)).min(10)
    }
}