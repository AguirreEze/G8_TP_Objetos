
class Banda {
	var musicos
	var representante
	
	constructor(unosMusicos,unRepresentante){
		musicos=unosMusicos
		representante=unRepresentante
	}

	method habilidadBanda(){
		if(self.hayQuimica()){
			return self.sumatoria()+(self.sumatoria()* 0.1)
		}else{
			return self.sumatoria()
		}
	}
	
	method sumatoria(){
		return musicos.sum({ musico=>musico.habilidad()})
	}
	
	method hayQuimica(){
		return musicos.all({musico=>musico.grupo()})
	}
	
	method cobroBanda(unaPresentacion){
		return musicos.sum({musico=>musico.costo(unaPresentacion)})+ representante.cobro()
	}
	
	method interpretanBien(unaCancion){
		return musicos.all({musico=>musico.interpretaBine(unaCancion)})
	}
}