import Presentacion.*
import lunaPark.*
import Cancion.*
import Album.*
import Musico.*
import VocalistaPopular.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
var aliciaEnElPais = new Cancion("Cancion de Alicia en el pais",510,
"Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir,
 vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, 
sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti.
 Se acabó ese juego que te hacía feliz.")

	override method agregarCantante(unCantante){
		
		if(unCantante.esApto(aliciaEnElPais)){
			
			super(unCantante)
		}
	}
	
	
	method canta(unMusico){
		return cantantes.contains(unMusico)
	}
	
	
	
	
}