import cosas2.*
object camion {
  const cosas = []
  method cargarCosas(unacosa) {
    unacosa.transformar()
    cosas.add(unacosa)
  }
  method descargarCosa(unacosa) {
    cosas.remove(unacosa)
  }
  method pesoTotalDelCamion() = cosas.sum({p=>p.peso()}) + 1000
  method elPesoEsPar() = cosas.sum({p=>p.peso()}).even()
  method haycosaQuePesa(unPeso) = cosas.any({p=>p.peso() == unPeso}) 
  method peligrosidadDelPrimero() = cosas.first().peligrosidad()
  method cosasQueSuperanUnaPeligrosidad(unNivel) = cosas.filter({p=>p.peligrosidad()>unNivel}) 
  method cosasQueSueprenLaPeligrosidadDeUnaCosa(unCosa) = cosas.filter({p=>p.peligrosidad()>unCosa.peligrosidad()}) 
  method elPesoEstaExcedido() = self.pesoTotalDelCamion() > 2500
  method puedeCircularEnRuta(unNivel) = not self.elPesoEstaExcedido() and cosas.all({p => p.peligrosidad() > unNivel })
  method tieneUnPesoEntre(unValor,otroValor) = cosas.filter({p => p.peso().beetwen(unValor,otroValor)})
  method cosaMasPesada() = cosas.max({p => p.peso()})
   
}

//( \(>\)) y menor que (\(<\)) 