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
}
