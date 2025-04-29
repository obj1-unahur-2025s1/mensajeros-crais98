object paquete {
  var estaPago = false
  var destino = laMatrix

  method estaPago() = estaPago
  method pagarPaquete() {estaPago = true}
  method puedeEntregarse() { 
    destino.dejaPasar(unMensajero) &&
    self.estaPago()
  }
}

object puenteBrooklyn {
  method dejarPasar(unMensajero) {
    unMensajero.peso() < 1000
  }
}

object laMatrix {
  method dejarPasar(unMensajero) {
    unMensajero.puedeLlamar()
  }  
}

object roberto {
  var transporte = bicicleta

  method peso() = 90 + transporte.peso()
  method puedeLlamar() = false
  method cambiarTransporte(nuevoTransporte){
          transporte = nuevoTransporte
  }
}

object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true
  method peso() = 0
  method puedeLlamar() = tieneCredito
  method cargarCredito() {tieneCredito=true}
  method agotarCredito() {tieneCredito = false}

}

object bicicleta {
  method peso() = 5
}

object camion {
  var acoplados = 0
  
  method cantidadAcoplados(unaCantidad){
    acoplados = unaCantidad
  }
  method peso() = 
}
