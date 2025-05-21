import jurado.*
import participantes.*

object concurso {
  const jurados = [mozart, beethoven]
  const participantes = []
  var asignoPuntaje = false
  
  method darDeAlta(unParticipante) {
    if (!participantes.contains(unParticipante)) participantes.add(
        unParticipante
      )
  }
  
  method darDeBaja(unParticipante) {
    if (!participantes.contains(unParticipante)) participantes.remove(
        unParticipante
      )
  }
  
  method entrenamiento() {
    participantes.forEach({ participante => participante.entrenar() })
  }
  
  method ajustarJurado() {
    jurados.forEach({ jurado => jurado.ajustar() })
  }
  
  method asignarPuntajes() {
    if (!asignoPuntaje) {
      asignoPuntaje = true
      participantes.forEach({ p => p.recibirPuntaje(jurados, escesarioActual) })
    }
  }
  
  method resetearPuntajes() {
    asignoPuntaje = false
    participantes.forEach({ p => p.resetearPuntaje() })
  }
  
  method ganador() {
    self.asignarPuntajes()
    return participantes.max({ p => p.puntaje() })
  }
  
  method eventoEspecial() {
    escesarioActual.aumentarSuperficie(2)
    beethoven.entusiasmado(5)
    self.ajustarJurado()
  }
}

object escesarioActual {
  var superficie = 20
  
  method superficie() = superficie
  
  method aumentarSuperficie(unaCantidad) {
    superficie += unaCantidad
  }
}
