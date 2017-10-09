//musico generico     SUPERCLASE
import Album.*
import noEsHabilidoso.*
class Musico {
	var limiteHabilidad
	var habilidad
	var estaEnGrupo
	var albumes=#{}
	
	constructor(unaHabilidad,unGrupo,susAlbumes){
		habilidad = unaHabilidad
		limiteHabilidad=70
		estaEnGrupo = unGrupo
		albumes = susAlbumes
	}
	
	method resticcionHabilidad(unValor){
		limiteHabilidad=unValor
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
		return (self.esDeMiAutoria(unaCancion)||habilidad>60)
	}
	
	method esApto(unaCancion){
		if(self.habilidad()<limiteHabilidad){
		throw new NoEntraAlLola("no es habilidoso")	
		}
		
		if(!self.esCompositor()){
		throw new NoEntraAlLola("no es compositor")
		}	
		
		 
		if(!self.interpretaBien(unaCancion)){
		throw new NoEntraAlLola("no puede interpretar bien  Alicia en el pais")		
		}
		
		return true
	}
	
	
	
	method compone(){
		
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
