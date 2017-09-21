//musico generico     SUPERCLASE

class Musico {
	var habilidad
	var grupo
	var albumes
	var habilidadAAumentar
	
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
	method modificarHabilidad(){
		if(grupo){
			return habilidad+habilidadAAumentar
		}else{
			return habilidad
		}
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


