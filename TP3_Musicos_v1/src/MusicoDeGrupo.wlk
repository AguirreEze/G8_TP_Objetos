import Musico.*
//joaquin
class  MusicoDeGrupo inherits Musico{
 	var habilidadAAumentar
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,cobrar,intepretar,unaHabilidadAAumentar)= 
	super(unaHabilidad,estaEnGrupo,susAlbumes,cobrar,intepretar){
		habilidadAAumentar=unaHabilidadAAumentar
	}
	
	override method habilidad(){
		if(estaEnGrupo){
			return super()+habilidadAAumentar
		}else{
			return habilidad
		}
	}
	
	

		
	
}
