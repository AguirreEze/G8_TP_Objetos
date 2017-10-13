import Cancion.*
import comparaciones.*
class Album {
	var titulo
	var canciones=#{}
	var fechaLanzamiento
	var unidadesHechas
	var unidadesVendidas
	var compararPor
	constructor(unTitulo,unasCanciones,unaFecha,hechos,vendidos,_comparacion){
		titulo=unTitulo
		canciones=unasCanciones
		fechaLanzamiento=unaFecha
		unidadesHechas=hechos
		unidadesVendidas=vendidos
		compararPor = _comparacion
	}
	method unaComparacion(cancion){
		return compararPor.comparacionPor(cancion)
	}
	method comparacionPor(esaComparacion){
		return canciones.max({ cancion=>self.unaComparacion(cancion)})
		
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
	
	//method cancionMasLarga(){
	//	return canciones.max({cancion=>cancion.cantidadLetras()})
	//}
	method canciones(){
		return canciones
	}
}
