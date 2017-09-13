object trastienda {
	var plantaBaja =400
	var primerPiso=300
	var unDia = new Date (año,mes,dia)
	
	method capaci8dad(unDia){
		if(  (self.esSabado()  ){             //Probar ésta linea
			return plantaBaja+primerPiso 
		}
			return plantaBaja 
	}
	
	method esSabado(unaFecha) {
		(self.unDia()).dayOfWeek() == 6
	
	method esConcurrido(unDia){
		return self.capacidad(unDia)>5000
	}
}
