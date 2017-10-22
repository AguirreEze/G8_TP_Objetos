
class CobroCapasidad {
	var capasidad
	var cobro
	constructor (unaCapasidad,unValor){
		capasidad=unaCapasidad
		cobro=unValor
	
	}
	method costoDePresentacion(unaPresentacion,cantante){
		if(unaPresentacion.capasidad(unaPresentacion.fecha())>capasidad){
			return cobro
		}else{
			return cobro-100
		}
	}
	
}