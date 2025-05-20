object mozart {
  var maximo = 10
  
  method puntajeDelArtista(
    unArtista,
    unEscenario
  ) = (unArtista.calidad() * 2).min(maximo)
  
  method ajustar() {
    maximo = 8
  }
  
  method puntajeMaximo() = maximo
}

object beethoven {
  var entusiasmo = 1
  
  method estaEnojado() = entusiasmo == 1
  
  method puntajeDelArtista(
    unArtista,
    unEscenario
  ) = (((unArtista.ocupa() * 100) / unEscenario.superficie()) / 10) + entusiasmo
  
  method entusiasmado(unNivel) {
    entusiasmo = unNivel.min(5)
  }
  
  method ajustar() {
    if (!self.estaEnojado()) {
      entusiasmo -= 1
    }
  }
}
