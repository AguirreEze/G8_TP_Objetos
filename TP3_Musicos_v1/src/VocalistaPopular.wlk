import Musico.*

class VocalistaPopular inherits Musico{
	
	var habilidadAModificar=-20        

	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,cobrar,intepretar)= 
	super(unaHabilidad,estaEnGrupo,susAlbumes,cobrar,intepretar){
		
	}
	
	
	
	
	override method habilidad(){
		if(estaEnGrupo){
			return super()+habilidadAModificar
		}else{
			return habilidad
		}
	}
	
}
