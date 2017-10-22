
class CobroCantidad {
	var cobro
	
	constructor(unValor){
		cobro=unValor
	}
	method costoDePresentacion(unaPresentacion,cantante){
		if(unaPresentacion.cantaSolo(cantante)){
			return cobro
		}else{
			return cobro/2
		}
	}

}