object cosas {
    
}
object knightRider {
  method peso() = 500
  method peligrosidad() = 10  
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
}
object paqueteDeLadrillos {
    var cantidadDeLadrillos = 0
    method asignarCantidadDeLadrillos(cantidad){
        cantidadDeLadrillos = cantidad
    } 
  method peso() = 2 * cantidadDeLadrillos
  method peligrosidad() = 2
  
}
object arenaGranel {
    var cantidadDeArena = 0
    method asignarCantidadDeLadrillos(cantidad){
        cantidadDeArena = cantidad
    } 
  method peso() = cantidadDeArena
  method peligrosidad() = 1
}
object bateriaAntearea {
  var tieneMisil = false
  method transformar(){
    not tieneMisil
  }
  method peso(){
    if(tieneMisil){
        return 200
    } else {
        return 300
    }
  } 
  method peligrosidad() {
    if(tieneMisil){
       return 100 
    }else{
       return 0
    }
  }
}
//( \(>\)) y menor que (\(<\)) adasdadsadadsda
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
}
object rasiduosRadioActivos {
  var unPeso = 0
    method asignarCantidadDeLadrillos(cantidad){
        unPeso = cantidad
    } 
  method peso() = unPeso
  method peligrosidad() = 200 
}
object embalajeDeSeguridad {
    var unCosa = bateriaAntearea
  method asignarUnacosa(cosa) {
    unCosa = cosa
  }
  method peso() = unCosa.peso()
  method peligrosidad() = unCosa.peligrosidad()/2  
}