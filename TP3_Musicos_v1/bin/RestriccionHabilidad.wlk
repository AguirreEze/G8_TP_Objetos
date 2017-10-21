import Musico.*
import noEsHabilidoso.*
import Restriccion.*

class RestriccionHabilidad inherits Restriccion {

	constructor(unValor)=super(unValor){
	
	}

	method cumpleCondicion(unCantante,unaCancion){
	if(unCantante.habilidad()<parametro){
		throw new NoEntraAlLola("no es habilidoso")	
		}
	}
	

}