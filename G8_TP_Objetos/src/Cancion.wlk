class Cancion {

	var nombre
	var duracion
	var letra
	
	
	constructor(unNombre,unaDuracion,unaLetra){
		nombre=unNombre
		duracion=unaDuracion
		letra=unaLetra
	}
	
	method esCorto(){
		return duracion<180
	}
	method duracion(){
		return duracion
	}
	
	method nombre(){
		return nombre
	}
	
	method letra(){
		return letra
	}
	method cantidadLetras(){
		return letra.size()
	}
	
	method contieneLaPalabra(unaPalabra) {
		return  letra.contains(unaPalabra)
	}
	
	method tieneMasDe(unValor){
		return duracion > unValor
	}
	method duraMasQue(unaCancion){
		return duracion > unaCancion.duracion()
	}
	method tieneMasCantidadDeLetrasQue(unaCancion){
		return letra.size() > unaCancion.letra().size()
	}
}





