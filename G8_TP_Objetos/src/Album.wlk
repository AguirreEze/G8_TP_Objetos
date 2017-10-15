import Cancion.*
class Album {
	var titulo
	var canciones=#{}
	var fechaLanzamiento
	var unidadesHechas
	var unidadesVendidas
	
	constructor(unTitulo,unasCanciones,unaFecha,hechos,vendidos){
		titulo=unTitulo
		canciones=unasCanciones
		fechaLanzamiento=unaFecha
		unidadesHechas=hechos
		unidadesVendidas=vendidos
	}
	
	
	method minimalista(){
		return canciones.all({cancion=>cancion.esCorto()})
	}
	
	method duracion(){
		return canciones.sum({cancion=>cancion.duracion()})
	}
	
	method exitoso(){
		return unidadesVendidas>unidadesHechas*0.75
	}
	
	method cancionMasLarga(){
		return canciones.max({cancion=>cancion.cantidadLetras()})
	}
	method canciones(){
		return canciones
	}
	method cualCancionEsMasLarga(unaCancion, otraCancion){
		if(unaCancion.duraMasQue(otraCancion)){
			return unaCancion
		}else{
			return otraCancion
		}	
	}
	method cualCancionTieneLetraMasLarga(unaCancion, otraCancion){
		if(unaCancion.tieneMasLetrasQue(otraCancion)){
			return unaCancion
		}else{
			return otraCancion
		}
	}
	method lasCancionesPoseeenElMismoTitulo(unaCancion, otraCancion){
		return unaCancion == otraCancion
	}
}
