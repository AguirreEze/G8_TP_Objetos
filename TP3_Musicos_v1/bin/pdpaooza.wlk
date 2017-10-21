import Presentacion.*
import lunaPark.*
import Cancion.*
import Album.*
import Musico.*
import VocalistaPopular.*
import noEsHabilidoso.*


object pdpalooza inherits Presentacion(15,12,2017,lunaPark,#{}){
	var restricciones=#{}
	
	//var limiteHabilidad=70


	method agregarCantante(unCantante,unaCancion){
		
		if(self.esApto(unCantante,unaCancion)){
			
			self.agregarCantante(unCantante)
		}
	}
	
	/*method resticcionHabilidad(unValor){
		limiteHabilidad=unValor
	}*/
	
	method canta(unMusico){
		return cantantes.contains(unMusico)
	}
	
	method modificarRestriccion(restriccion,unValor){
		restriccion.modificarParametro(unValor)
	}
	method agregarRestriccion(restriccion){
		restricciones.add(restriccion)
	}
	
	method quitarRestriccion(restriccion){
		restricciones.remove(restriccion)
	}
	
	method esApto(unCantante,unaCancion){
		restricciones.forEach({restriccion=>restriccion.cumpleCondicion(unCantante,unaCancion)})
		
		return true
	}
	
	
}