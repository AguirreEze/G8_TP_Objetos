

object lucia {
	var habilidad =70
	var grupo=true
	
	method grupo(){
		return grupo
	}
	
	method habilidad(){
		if(self.grupo()){
			return habilidad-20
		}else{
			return habilidad
		}
	}
	
	method serSolista(){
		grupo=false
	}
	
	
	
	method interpretaBien(unaCancion){
		return unaCancion.contieneLaPalabra("familia")
	}
	
	method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.esConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
	
}