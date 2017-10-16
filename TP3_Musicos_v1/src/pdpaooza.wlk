import Presentacion.*
import lunaPark.*
import Cancion.*
import Album.*
import Musico.*
import VocalistaPopular.*
import noEsHabilidoso.*

object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	
	var limiteHabilidad=70
var aliciaEnElPais = new Cancion("Cancion de Alicia en el pais",510,
"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir,
 vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, 
sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti.
 Se acab� ese juego que te hac�a feliz.")

	override method agregarCantante(unCantante){
		
		if(self.esApto(unCantante,aliciaEnElPais)){
			
			super(unCantante)
		}
	}
	
	method resticcionHabilidad(unValor){
		limiteHabilidad=unValor
	}
	
	method canta(unMusico){
		return cantantes.contains(unMusico)
	}
	
	method esApto(unCantante,unaCancion){
		if(unCantante.habilidad()<limiteHabilidad){
		throw new NoEntraAlLola("no es habilidoso")	
		}
		
		if(!unCantante.esCompositor()){
		throw new NoEntraAlLola("no es compositor")
		}	
		
		 
		if(!unCantante.interpretaBien(unaCancion)){
		throw new NoEntraAlLola("no puede interpretar bien  Alicia en el pais")		
		}
		
		return true
	}
	
	
}