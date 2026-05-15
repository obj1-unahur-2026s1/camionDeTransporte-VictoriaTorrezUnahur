
object knightRider {
  method peso() = 500
  method peligrosidad() = 10 
  method bulto() = 1  
  method transformar() {} 
}
object bumblebee {
  var esAuto=true
  method transformarse(){ not esAuto} 
  method peso() = 800
  method peligrosidad(){
    if(esAuto){
        return 15
    } else {
        return 30
    }
  } 
  method bulto() = 2
  method transformar() { self.transformar()}
}
object paqueteDeLadrillos {
    var cantidadDeLadrillos = 0
    method asignarCantidadDeLadrillos(cantidad){
        cantidadDeLadrillos = cantidad
    } 
  method peso() = 2 * cantidadDeLadrillos
  method peligrosidad() = 2
  method bulto(){
    if(cantidadDeLadrillos > 100){
      return 1
    } else if(cantidadDeLadrillos.between(101, 300)){
      return 2
    } else {
      return 3
    }
  }
  
  method transformar() {self.asignarCantidadDeLadrillos(12)}
}
object arenaGranel {
    var cantidadDeArena = 0
    method asignarCantidadDeArena(cantidad){
        cantidadDeArena = cantidad
    } 
  method peso() = cantidadDeArena
  method peligrosidad() = 1
  method bulto() = 0 
  method transformar() {if(cantidadDeArena - 10 < 0) self.asignarCantidadDeArena(10) else 0}
}
object bateriaAntearea {
  var tieneMisil = false
  method cargarMisil(){
    not tieneMisil
  }
  method peso(){
    if(tieneMisil){
        return 300
    } else {
        return 200
    }
  } 
  method peligrosidad() {
    if(tieneMisil){
       return 100 
    }else{
       return 0
    }
  }
  method bulto()= if(tieneMisil) 2 else 1 
  method transformar() {
    self.cargarMisil()
  }
}
//( \(>\)) y menor que (\(<\)) 
object contenedorPortuario {
  const cosas = []
  method añadircosas(unaCosa) {
    cosas.add(unaCosa)
  }
  method sacarCosa(unaCosa) {
    cosas.remove(unaCosa)
  }
  method peso() = cosas.sum({p=>p.peso()}) + 100
  method peligrosidad() = cosas.max({p => p.peligrosidad()}).peligrosidad() 
  method bulto() = 1 + cosas.sum({p=>p.bulto()})
  method transformar() {
    cosas.forEach({p=>p.transformar()})
  }
}
object rasiduosRadioActivos {
  var unPeso = 0
    method asignarCantidadDeLadrillos(cantidad){
        unPeso = cantidad
    } 
  method peso() = unPeso
  method peligrosidad() = 200 
  method bulto() = 0 
  method transformar() {
    self.asignarCantidadDeLadrillos(15)
  }
}
object embalajeDeSeguridad {
    var unCosa = bateriaAntearea
  method asignarUnacosa(cosa) {
    unCosa = cosa
  }
  method peso() = unCosa.peso()
  method peligrosidad() = unCosa.peligrosidad()/2  
  method bulto() = 1
  method transformar() {
    
  }
}