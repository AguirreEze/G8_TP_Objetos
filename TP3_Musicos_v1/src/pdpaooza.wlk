import Presentacion.*
import lunaPark.*
import Cancion.*
import Album.*
import Musico.*
import VocalistaPopular.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
var aliciaEnElPais = new Cancion("Cancion de Alicia en el pais",510,
"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir,
 vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, 
sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti.
 Se acab� ese juego que te hac�a feliz.")

	override method agregarCantante(unCantante){
		
		if(unCantante.esApto(aliciaEnElPais)){
			
			super(unCantante)
		}
	}
	
	
	method canta(unMusico){
		return cantantes.contains(unMusico)
	}
	
	
	
	
}