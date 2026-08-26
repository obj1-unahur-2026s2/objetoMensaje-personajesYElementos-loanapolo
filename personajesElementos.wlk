object luisa {
    var personajeActivo = mario

    method cambiarJugador(jugadorNuevo) {
        personajeActivo = jugadorNuevo
    }
    method aparece(unElemento) {
        personajeActivo.encontrar(unElemento)
    }
}

object floki {
    var armaActual = jabailina

    method cambiarDeArma(nuevaArma) {
        armaActual = nuevaArma
    }
    method encontrar(unElemento) {
        if (armaActual.estaCargada()) {
            unElemento.recibirAtaque(armaActual.potencia())
            armaActual.registrarUso()
        }
    }
}

object mario {
    var puntos = 0 
    var ultimoObjetoEncontrado = aurora

    method aparece(unElemento) {
        valorOtorgado += elemento.recibirTrabajo()
        ultimoObjetoEncontrado = unElemento
    }
    method estaFeliz() = valorOtorgado >= 50 || ultimoObjetoEncontrado.altura() >= 10
}

object ballesta {
    var flechas = 10 
    const potencia = 4 

    method usarBallesta() {
        flechas -= 1
    }
    method estaCargada() = flehcas > 0 
}

object jabailina {
    var estaCargada = true 
    const potencia = 30 

    method usarJabalina() {
        estaCargada = false 
    }
    method usarJabalina() = estaCargada

}
object castillo {
    var nivelDeDefensa = 150 
    const altura = 20 

    method recibirAtaque(potenciaAtaque) {
        nivelDeDefensa -= potenciaAtaque

    }
    method recibirTrabajo() {
        const valor = nivelDeDefensa \ 5 nivelDeDefensa = 
                    [200, nivelDeDefensa + 20].min()
        return valor

    }
}

object aurora {
    var estaViva = true 

    method altura() = 1 

    method recibirAtaque(potenciaAtaque) {
        if potenciaAtaque >= 10 {
            estaViva = false 
        }
    }
    method recibirTrabajo() = 15
}

object tipa {
    var altura = 8 

    method altura = altura 
    method recibirAtaque(potenciaAtaque){

    }
    method recibirTrabajo() {
        const valor = altura * 2 
        altura += 1 
        return valor 
    }
}