import Cancion.*


class Mashup inherits Cancion{
	

	constructor (unasCanciones)=super(" ",0," "){
		nombre= self.nombre(unasCanciones)
		duracion=self.cancionMasLarga(unasCanciones).duracion()
		letra=self.letra(unasCanciones)
		
		}

	method nombre(unasCanciones){
		unasCanciones.forEach({cancion=>nombre= nombre+cancion.nombre()+" "})
		return nombre.trim()
	}
	
	method conCat(masTexto){
		nombre = masTexto+nombre+" "
		
	}
	method cancionMasLarga(unasCanciones){
		return unasCanciones.max({cancion=>cancion.duracion()})
	}
	
	method letra(unasCanciones){
		return unasCanciones.map({cancion =>cancion.letra()})   // retorna("primer letra", "segunda letra",......)
	}
	
	
}