//musico generico     SUPERCLASE
import Album.*

class Musico {
	var habilidad
	var estaEnGrupo
	var albumes=#{}
	var comoCobra
	var comoInterpreta
	
	constructor(unaHabilidad,unGrupo,susAlbumes,cobrar,interpretar){
		
		comoCobra=cobrar
		comoInterpreta=interpretar
		habilidad = unaHabilidad
		estaEnGrupo = unGrupo
		albumes = susAlbumes
	}
	
	method cancionesQueSiPuedeTocarBien(unasCanciones){
		return unasCanciones.filter({cancion=>self.interpretaBien(cancion)})
	}
	
	method modificarCobro(maneraDeCobro){
		comoCobra=maneraDeCobro
	}
	
	method modificarInterpretacion(maneraDeInterpretar){
		comoInterpreta=maneraDeInterpretar
	}
	
	method habilidadMayorA(unValor){
		return habilidad >=unValor
	}
	method grupo(){
		return estaEnGrupo
	}
	
	method habilidad(){
		return habilidad
	}

	method interpretaBien(unaCancion){
		return (self.esDeMiAutoria(unaCancion)||habilidad>60||comoInterpreta.interepretaBien(unaCancion))
	}
	
	method costoDePresentacion(unaPresentacion){
		return comoCobra.costoDePresentacion(unaPresentacion,self)
	}
	
	
	method esDeMiAutoria(unaCancion){
		return albumes.any({album=>album.tieneEsteTema(unaCancion)})
	}

	method esMinimalista(){
		return albumes.all({album=>album.minimalista()})
	}
	
	method esCompositor(){
		return !albumes.isEmpty()
	}
	
	method serSolista(){
		estaEnGrupo=false
	}
	
	method duracionDeLaObra(){
		return albumes.sum({album=>album.duracion()})
	}
	
	method cancionMasLarga(){
		return albumes.max({album=>album.cancionMasLarga()})
	}
	
	method laPego(){
		return albumes.all({album=>album.exitoso()})
	}
	method cancionesConPalabra(unaPalabra){
		return albumes.flatMap({album=> album.canciones()}).filter({cancion => cancion.contieneLaPalabra(unaPalabra)})
	}
}
