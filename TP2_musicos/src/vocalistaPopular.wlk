import Musico.*

class VocalistaPopular inherits Musico{
	
	var habilidadAModificar=20        
	var esaPalabra
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,unaPalabra)= super(unaHabilidad,estaEnGrupo,susAlbumes){
		esaPalabra=unaPalabra
	}
	
	
	override method interpretaBien(unaCancion){
		return unaCancion.contieneLaPalabra(esaPalabra)
	}
	
	method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.esConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
	override method habilidad(){
		if(grupo){
			return super()+habilidadAModificar
		}else{
			return habilidad
		}
	}
	
}
