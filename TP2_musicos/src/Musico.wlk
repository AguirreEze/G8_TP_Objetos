//musico generico     SUPERCLASE
import Album.*
class Musico {
	var habilidad
	var estaEnGrupo
	var albumes=#{}
	
	constructor(unaHabilidad,unGrupo,susAlbumes){
		habilidad = unaHabilidad
		estaEnGrupo = unGrupo
		albumes = susAlbumes
	}
	
	method grupo(){
		return estaEnGrupo
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
		estaEnGrupo=false
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
