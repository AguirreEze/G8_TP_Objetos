
class  CobroFecha {
	var cobro
	var fecha
	var aumento
	
	constructor(unValor, unaFecha, unaSuba){
		cobro= unValor
		fecha=unaFecha
		aumento=unaSuba
	}
	method costoDePresentacion(unaPresentacion,musico){
		
		if(unaPresentacion.mes()<fecha.month()){
			return cobro
		}else{
			return cobro+(cobro*aumento)
		}
	}

}