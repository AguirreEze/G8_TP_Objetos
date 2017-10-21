
import Restriccion.*
import Musico.*
import noEsHabilidoso.*

class RestriccionGrupo inherits Restriccion{

	
	constructor(unValor)=super(unValor){
		
	}
	
	method cumpleCondicion(unCantante,unaCancion){
		if(unCantante.grupo()!=parametro){
		throw new NoEntraAlLola("no cumple condicion de grupo")	
		}
	}
	
}