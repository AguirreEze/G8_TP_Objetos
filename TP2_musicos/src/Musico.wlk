//musico generico     SUPERCLASE
import Album.*
class Musico {
	var habilidad
	var grupo
	var albumes=#{}
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes){
		habilidad = unaHabilidad
		grupo = estaEnGrupo
		albumes = susAlbumes
	}
	
	method grupo(){
		return grupo
	}
	
	method habilidad(){
		return habilidad
	}

	method interpretaBien(unaCancion){
		return unaCancion.tieneMasDe(300)
	}

	method esMinimalista(){
		return albumes.all({album=>album.minimalista()})
	}
	
	method serSolista(){
		grupo=false
	}
	
	
}


