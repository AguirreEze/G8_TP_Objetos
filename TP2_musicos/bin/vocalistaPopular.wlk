// Musico generico
class VocalistaPupular {
	var habilidad
	var grupo
	var albumes
	
	constructor(unaHabilidad,habilidadAAumenntar,estaEnGrupo,susAlbumes){
		habilidad = unaHabilidad
		grupo = estaEnGrupo
		albumes = susAlbumes
	}


	method interpretaBien(unaCancion){
		return unaCancion.tieneMasDe(300)
	}

	method aumentarHAbilidad()
		habilidad += habilidadAAumetar
}

