import Musico.*
//lucia
class VocalistaPupular inherits Musico{
	
	var habilidadAModificar=20        //SE PUEDE INSTANCIAR UNA VARIABLE DE LA CLASE SUPER ACÁ?
	var esaPalabra
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,unaPalabra)= super(unaHabilidad,estaEnGrupo,susAlbumes){
		esaPalabra=unaPalabra
	}
	
	
	override method interpretaBien(unaCancion){
		return unaCancion.contieneLaPalabra(esaPalabra)
	}
	
	method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.esConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
	override method habilidad(){
		if(grupo){
			return super()+20
		}else{
			return habilidad
		}
	}
	
}
