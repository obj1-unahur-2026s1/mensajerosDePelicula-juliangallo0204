object celular {
    var tieneCredito = true

    method tieneCredito() = tieneCredito
    method seQuedaSinCredito() {
        tieneCredito = false
    }
    method comprarCredito() {
        tieneCredito = true
    }
}