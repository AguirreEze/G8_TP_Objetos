class  MusicoDeGrupo{
	
	var habilidad 
	var grupo 
	var habilidadaAAumentar
	
	constructor(_habilidadAAumenntar){
		 habilidadAAumentar = _habilidadAAumentar
		 }
	
	method habilidad(){
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
