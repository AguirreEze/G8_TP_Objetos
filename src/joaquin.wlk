object  joaquin {
	var habilidad =20
	var grupo = true
	
	method saberHabilidad(){
		if(grupo){
			return habilidad+5
		}else{
			return habilidad
		}
	}
	
	method interpretaBien(unaCancion){
		return unaCancion.tieneMasDe(300)
	}
	
	method serSolista(){
		grupo=false
	}
	
	method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.cantaSolo(self)){
			return 100
		}else{
			return 50
		}
	}
}
