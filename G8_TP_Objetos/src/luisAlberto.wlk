import fender.*
import gibson.*
import Musico.*

object luisAlberto inherits Musico(8,false,#{})  {
	
	var valorViejo=true
	
	
	
	method habilidad(unaGuitarra){
		return 100.min(habilidad*unaGuitarra.valor())
	}
	
	method valorViejo(unaPresentacion){
		valorViejo=unaPresentacion.mes()<09
	}
	method costoDePresentacion(unaPresentacion){
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
