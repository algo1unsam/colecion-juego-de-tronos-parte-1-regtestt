object daenerys {

  const property inventario = #{}
  const property historia = []
  var property maxInventario = 2

  const textoError = "No podes agarrar este artefacto, inventario lleno."

  method agarrar(artefacto){
    historia.add(artefacto)
    if(inventario.size()<maxInventario){
      inventario.add(artefacto)
    }else{
      return textoError
    }
  }

  method volver(lugar){
    lugar.guardar(self.inventario())
    inventario.clear()
  }

  method posesiones() = self.inventario() + castillo.artefactos()

  method tiene(artefacto) = self.posesiones().contains(artefacto)
}

object castillo {

  const property artefactos = #{}

  method guardar(objetos) {
    artefactos.addAll(objetos)
  }
}

object espada {

}

object libro {
  
}

object collar {
  
}

object armadura {
  
}
