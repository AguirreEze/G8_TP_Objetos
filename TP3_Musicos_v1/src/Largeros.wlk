import Musico.*

class Larguero inherits Musico{
	var unaDuracion
	
	constructor (unaHabilidad,unGrupo,susAlbumes,esaDuracion)=super(unaHabilidad,unGrupo,susAlbumes){
		habilidad = unaHabilidad
		estaEnGrupo = unGrupo
		albumes = susAlbumes
		unaDuracion=esaDuracion
	}
	override method interpretaBien(unaCancion){
		return (unaCancion.duracion() > unaDuracion || super(unaCancion))
	}
	

}