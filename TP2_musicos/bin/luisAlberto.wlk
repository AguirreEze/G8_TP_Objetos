import fender.*
import gibson.*
import Musico.*

object luisAlberto inherits Musico (8,true,"Su Album") {
	
	var valorViejo=true
	
	method valorViejo(unaPresentacion){
		valorViejo=unaPresentacion.mes()<=09
	}
	
	method habilidad(unaGuitarra){
		return self.esaGuitarraO100(unaGuitarra)
	}
	
	method esaGuitarraO100(unaGuitarra){
		return 100.min(habilidad*unaGuitarra.valor())
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
