//musico generico     SUPERCLASE
class Musico {
	var habilidad
	var grupo
	var albumes
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes){
		habilidad = unaHabilidad
		grupo = estaEnGrupo
		albumes = susAlbumes
	}


	method interpretaBien(unaCancion){
		return unaCancion.tieneMasDe(300)
	}

	method esMinimalista(){
		
	}

}


