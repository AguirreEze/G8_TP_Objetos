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
	
	method duracionDeLaObra(){
		return albumes.sum({album=>album.duracion()})
	}
	
	method cancionMasLarga(){
		return albumes.max({cancion=>cancion.cantidadLetras()}).map({album=>album.cancionMasLarga()})
	}
	
	method laPego(){
		return albumes.all({album=>album.exitoso()})
	}
	method cancionesConPalabra(unaPalabra){
		return albumes.flatMap({album=> album.canciones()}).filter({cancion => cancion.contieneLaPalabra(unaPalabra)})
	}
}
