import Presentacion.*
import hipodromoSanIsidro.*

object pdpalooza inherits Presentacion(15,12,2017,hipodromoSanIsidro,{}){
	
	method agregarCantantes(unCantante){
		try {
			unCantante.habilidad() > 70 &&
			unCantante.esCompositor() 
		}
		catch {}
	}



}