import Musico.*
import noEsHabilidoso.*
import Restriccion.*

class RestriccionCancion inherits Restriccion{
	
	
	method cumpleCondicion(unCantante,unaCancion){
		if(!unCantante.interpretaBien(unaCancion)){
		throw new NoEntraAlLola("no puede interpretar bien la cancion necesaria")		
		}
	}
}