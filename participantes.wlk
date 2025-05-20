object taylorSwift {
  var costoBanda = 1
  var puntaje = 0
  
  method calidad() = 5 + costoBanda
  
  method ocupa() = 10 * costoBanda
  
  method entrenar() {
    costoBanda *= 2
  }
  
  method puntaje() = puntaje
  
  method recibirPuntaje(unPuntaje) {
    puntaje += unPuntaje
  }
}

object morat {
  const integrantes = ["Juan", "Pablo", "Simón", "Martín"]
  var puntaje = 0
  
  method calidad() = 2 * integrantes.size()
  
  method ocupa() = integrantes.sum({ i => i.length() })
  
  method entrenar() {
    const integrantesARemover = integrantes.filter(
      { integrante => integrante.length() < 5 }
    )
    integrantesARemover.forEach(
      { integrante => integrantes.remove(integrante) }
    )
  }
  
  method puntaje() = puntaje
  
  method recibirPuntaje(unPuntaje) {
    puntaje += unPuntaje
  }
}

object silvioRodriguez {
  var puntaje = 0
  
  method calidad() = 10
  
  method ocupa() = 1
  
  method entrenar() {
    
  }
  
  method puntaje() = puntaje
  
  method recibirPuntaje(unPuntaje) {
    puntaje += unPuntaje
  }
}

object badBunny {
  var property energia = 20
  var puntaje = 0
  
  method calidad() = energia / 2
  
  method ocupa() = energia * 1.1
  
  method entrenar() {
    energia -= energia * 0.1
  }
  
  method puntaje() = puntaje
  
  method recibirPuntaje(unPuntaje) {
    puntaje += unPuntaje
  }
}
