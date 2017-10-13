import Cancion.*

class Remix inherits Cancion {
		
	constructor (unaCancion,unNombre,unaDuracion,unaLetra)=super(unNombre,unaDuracion,unaLetra){
		nombre=unNombre
		duracion=self.remixarDuracion()
		letra=self.remixarLetra()
	}

	
	method remixarLetra(){
		return "mueve tu cuerpo baby" + unaCancion.unaLetra() + "yeah oh yeah"
	}
	method remixarDuracion(){
		return unaCancion.duracion() * 3
	}
}