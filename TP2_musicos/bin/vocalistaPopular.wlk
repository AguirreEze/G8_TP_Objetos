import Musico.*
//lucia
class VocalistaPupular inherits Musico{
	
	var habilidadAModificar=20        //SE PUEDE INSTANCIAR UNA VARIABLE DE LA CLASE SUPER ACÁ?
	var esaPalabra
	
	constructor(unaHabilidad,estaEnGrupo,susAlbumes,unaPalabra)= super(unaHabilidad,estaEnGrupo,susAlbumes){
	 	habilidad = unaHabilidad
		grupo = estaEnGrupo
		albumes = susAlbumes
		esaPalabra=unaPalabra
	}
	
	method grupo(){
		return grupo
	}
	
	override method interpretaBien(unaCancion){
		return unaCancion.contieneLaPalabra(esaPalabra)
	}
	
	override method costoDePresentacion(unaPresentacion){
		if(unaPresentacion.esConcurrido()){
			return 500
		}else{
			return 400
		}
	}
	
	
}
