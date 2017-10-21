import Cancion.*

class Remix inherits Cancion {
		
	/*constructor (unaCancion)=super(unaCancion.nombre(),unaCancion.duracion(),unaCancion.letra()){
	letra= "mueve tu cuerpo baby " + unaCancion.letra() + " yeah oh yeah"
	duracion=unaCancion.duracion() * 3
	}*/

	constructor (unaCancion)=super(unaCancion.nombre(),unaCancion.duracion(),unaCancion.letra()){
	
	}
	
	override method duracion(){
		return super() *3
	}
	
	override method letra(){
		return "mueve tu cuerpo baby " + super() + " yeah oh yeah"
	}
	
}