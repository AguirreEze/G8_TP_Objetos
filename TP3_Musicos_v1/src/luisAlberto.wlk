import fender.*
import gibson.*
import Musico.*
import CobroFecha.*
import Largeros.*

object luisAlberto inherits Musico(8,false,#{},cobroFecha,new Larguero(180))  {
	
	var cobroFecha= new CobroFecha(1000,new Date (01,09,2017),0.2)
	
	method habilidad(unaGuitarra){
		return 100.min(habilidad*unaGuitarra.valor())
	}
	
	method darAlbumes(unosAlbumes){
		albumes=unosAlbumes
	}
	
	

	override method interpretaBien(unaCancion){
		return true
	}

}
