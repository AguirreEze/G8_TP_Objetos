import Musico.*
import MusicoDeGrupo.*
import VocalistaPopular.*
import Album.*
import Representante.*
class Banda {
	var musicos=#{}
	var representante
	var habilidad
	var cobra
	var predio
	
	constructor(unosMusicos,unRepresentante,unaPresentacion){
		musicos.add(unosMusicos)
		representante=unRepresentante
		habilidad=self.generarHabilidad()
		cobra=self.generarCobro(unaPresentacion)
		predio=unaPresentacion
	}
	
	method generarHabilidad(){
		return (1.1 * musicos.sum({musico=> musico.habildad()}))
	}
	method generarCobro(unaPresentacion){
		return musicos.sum({musico=> musico.costoDePresentacion(unaPresentacion)})
					 + representante.costoDePresentacion()
	}
	method interpretaBien(unaCancion){
		return musicos.all({musico=>musico.interpretaBien(unaCancion)})
	}
}