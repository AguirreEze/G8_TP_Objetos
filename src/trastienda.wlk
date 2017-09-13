object trastienda {
	var plantaBaja =400
	var primerPiso=300
	var unDia = new Date (año,mes,dia)
	
	method capacidad(unDia){
		if(unDia.dayOfWeek() == 6){             //Probar ésta linea
			return plantaBaja+primerPiso 
		}else{
			return plantaBaja 
		}
	}
	
	method esConcurrido(unDia){
		return self.capacidad(unDia)>5000
	}
}
