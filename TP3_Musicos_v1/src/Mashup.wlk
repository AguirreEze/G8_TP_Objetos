import Cancion.*


class Mashup inherits Cancion{
	
	var canciones=#{}
	
	constructor (unasCanciones)=super("",0,""){
		
		nombre= self.nombre()
		duracion=self.cancionMasLarga().duracion()
		letra=self.letra()
		
		}

	override method nombre(){
		var nombre
		unasCanciones.forEach({cancion=>nombre+=" "+cancion.nombre()})
		return nombre.take(1)
	}
	
	method cancionMasLarga(){
		return unasCanciones.max({cancion=>cancion.duracion()})
	}
	
	override method letra(){
		return canciones.map({cancion =>cancion.letra()})   // retorna("primer letra", "segunda letra",......)
	}
	
	
}