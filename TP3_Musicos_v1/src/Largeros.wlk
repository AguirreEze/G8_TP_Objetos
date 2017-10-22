import Musico.*

class Larguero {
	var duracion
	constructor(unaDuracion){
	duracion=unaDuracion	
	}
	method interpretaBien(unaCancion){
		return unaCancion.duracion() > duracion
	}
	

}