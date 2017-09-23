/** First Wollok example */
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
		return canciones.max({cancion=>cancion.duracion()})
	}
}
