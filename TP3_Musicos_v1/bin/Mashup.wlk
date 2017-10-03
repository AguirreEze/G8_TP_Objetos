import Cancion.*


class Mashup inherits Cancion{
	
	var canciones=#{}
	
	constructor (unaCancion,otraCancion,_cancion)=super(unaCancion,otraCancion,_cancion){
		nombre= self.nombre()
		duracion=self.cancionMasLarga().duracion()
		letra=self.letra()
		self.canciones().add(unaCancion,otraCancion,_cancion)
		}

	override method nombre(){
		return unaCancion.nombre() + otraCancion.nombre() + _cancion.nombre()
	}
	method canciones(){
		return canciones
	}
	method cancionMasLarga(){
		return canciones.max({cancion=>cancion.duracion()})
	}
	override method letra(){
		return canciones.map({cancion =>cancion.letra()})   // retorna("primer letra", "segunda letra",......)
	}
}