import Interpretacion.*

class Palabrero{
	
	var esaPalabra
	constructor(unaPalabra){
		esaPalabra=unaPalabra
	}
	method interpretaBien(unaCancion){
		return unaCancion.contieneLaPalabra(esaPalabra)
	}
	

}