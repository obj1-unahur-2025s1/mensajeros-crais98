object paquete {
  var estaPago = false
  var destino = laMatrix

  method estaPago() = estaPago
  method pagarPaquete() {estaPago = true}
  method puedeEntregarse(unMensajero) { 
    return destino.dejaPasar(unMensajero) &&
    self.estaPago()
  }
}

object paquetito {
  method estaPago() = true
  method puedeEntregarse()= true
}

object paqueton {
  const destino = []

  method agregarUnDestino(unDestino) {
    destino.add(unDestino)
  }

  method precio() = 100 * destino.size()
  method pagar(unImporte) {importePagado > }
  method estaPago(){
    return importePagado >= self.precioTotal()
  }
  method puedeEntregarse(unMensajero){} 
  method puedePasarPorDestino(unMensajero){
    return destino.inc({d => d.dejarPasar(unMensajero) })
  }
}

object puenteBrooklyn {
  method dejarPasar(unMensajero) {
    unMensajero.peso() < 1000
  }
}

object laMatrix {
  method dejarPasar(unMensajero) {
    return unMensajero.puedeLlamar()
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

object empresaMensajeria {
  const mensajeros = []
  
  method mensajeros() = mensajeros
  method contratar(unMensajero){
    mensajeros.add(unMensajero)
  }

  method despedir(unMensajero){
    mensajeros.remove(unMensajero)
  }

  method esGrande() = mensajeros.size() > 2
  method puedeEntregarPaquete(){
    return paquete.puedeEntregarse(mensajeros.first())
  }

  method pesoUltimoMensajero() = mensajeros.last().peso()

}


