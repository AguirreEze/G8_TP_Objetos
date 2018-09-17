import fender.*
import gibson.*
import Musico.*

object luisAlberto inherits Musico(unaHabilidad,estaEnGrupo,susAlbumes)  {
	
	var valorViejo=true
	var unaHabilidad=8
	var estaEnGrupo=false
	var susAlbumes=#{}
	
	
	
	method habilidad(unaGuitarra){
		return 100.min(habilidad*unaGuitarra.valor())
	}
	
	method valorViejo(unaPresentacion){
		valorViejo=unaPresentacion.fecha()<20170900
	}
	override method costoDePresentacion(unaPresentacion){
		self.valorViejo(unaPresentacion)
		if(valorViejo){
			return 1000
		}else{
			return 1200
		}
	}

	override method interpretaBien(unaCancion){
		return true
	}

}
