import Musico.*

class Palabrero inherits Musico{
	var unaPalabra
	
	constructor (unaHabilidad,unGrupo,susAlbumes,esaPalabra)=super(unaHabilidad,unGrupo,susAlbumes){
		habilidad = unaHabilidad
		estaEnGrupo = unGrupo
		albumes = susAlbumes
		unaPalabra=esaPalabra
	}
	override method interpretaBien(unaCancion){
		return (unaCancion.contieneLaPalabra(unaPalabra) || super(unaCancion))
	}
	

}