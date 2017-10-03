import Cancion.*

class Remix inherits Cancion {
		
	constructor (unaCancion,suDuracion,suLetra)=super(unaCancion,suDuracion,suLetra){
		nombre=unaCancion.nombre()
		duracion=unaCancion.unaDuracion() * 3
		letra="mueve tu cuerpo baby" + unaCancion.unaLetra() + "yeah oh yeah"
		}




}