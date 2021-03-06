import Musico.*

class  MusicoDeGrupo inherits Musico{
 	var habilidadAAumentar
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,_habilidadAAumentar)=super(unaHabilidad,estaEnGrupo,susAlbumes){
		habilidadAAumentar=_habilidadAAumentar
	}
	
	override method habilidad(){
		if(estaEnGrupo){
			return super()+habilidadAAumentar
		}else{
			return habilidad
		}
	}
	
	method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.cantaSolo(self)){
			return 100
		}else{
			return 50
		}
	}

	override method interpretaBien(unaCancion){
		return unaCancion.tieneMasDe(300)||super(unaCancion)
	}	
	
}
