import fender.*
import gibson.*

object luisAlberto {
	
	var habilidad =8
	var valorViejo=true
	
	method habilidad(unaGuitarra){
		return 100.min(habilidad*unaGuitarra.valor())
	}
	
	method valorViejo(unaPresentacion){
		valorViejo=unaPresentacion.fecha()<20170900
	}
	method costoDePresentacion(unaPresentacion){
		self.valorViejo(unaPresentacion)
		if(valorViejo){
			return 1000
		}else{
			return 1200
		}
	}

	method interpretaBien(unaCancion){
		return true
	}

}
