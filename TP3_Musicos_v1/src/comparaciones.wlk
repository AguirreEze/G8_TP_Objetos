import Cancion.*

object duracion {
	method comparacionPor(unaCancion){
		return unaCancion.duracion()
	}
}
object tamanio{
	method comparacionPor(unaCancion){
		return unaCancion.cantidadLetras()
	}
}
object titulo{
	method comparacionPor(unaCancion){
		return unaCancion.titulo().size()
	}
}