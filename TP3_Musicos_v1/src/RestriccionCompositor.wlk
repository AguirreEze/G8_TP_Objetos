
import Restriccion.*
import Musico.*
import noEsHabilidoso.*

class RestriccionCompositor inherits Restriccion {
	
	constructor(unValor)=super(unValor){
	
	}
	
	method cumpleCondicion(unCantante,unaCancion){
		if(unCantante.esCompositor()!=parametro){
		throw new NoEntraAlLola("no cumple con la consicion de compositores")
		}
	}


}