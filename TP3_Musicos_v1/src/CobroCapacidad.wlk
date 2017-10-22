
class CobroCapacidad {
	var capacidad
	var cobro
	constructor (unaCapacidad,unValor){
		capacidad=unaCapacidad
		cobro=unValor
	
	}
	method costoDePresentacion(unaPresentacion,cantante){
		if(unaPresentacion.capasidad(unaPresentacion.fecha())>capacidad){
			return cobro
		}else{
			return cobro-100
		}
	}
	
}