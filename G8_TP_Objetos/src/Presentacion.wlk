class Presentacion {
	
	var fecha 
	var predio
	var cantantes=#{}
	
	constructor(unDia,unMes,unAnio,unPredio,unosCantantes){
		
		fecha=new Date(unDia,unMes,unAnio)
		predio=unPredio
		cantantes=unosCantantes
	}
	method agregarCantantes(unCantante)

	method cantaSolo(unCantante){
		return cantantes.contains(unCantante)&&cantantes.size()==1
	}
	method costoDePresentacion(){

		return cantantes.sum({cantante=>cantante.costoDePresentacion(self)})
		
	}
	method mes(){
		return fecha.month()
		}
		
	method dia(){
		return fecha.dayOfWeek()
	}
	method esConcurrido(){
		return predio.esConcurrido(fecha)
	}
}
