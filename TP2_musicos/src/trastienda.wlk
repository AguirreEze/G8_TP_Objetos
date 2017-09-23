object trastienda {
	var plantaBaja =400
	var primerPiso=300
	
	method capacidad(unaFecha){
		if(unaFecha.dayOfWeek() ==6){            
			return plantaBaja+primerPiso 
		}
			return plantaBaja 
	}
	
	
	method esConcurrido(unaFecha){
		return self.capacidad(unaFecha)>5000
	}
}

