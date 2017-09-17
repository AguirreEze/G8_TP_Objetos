object gibson {
	var valor = 15
	var estado = true
	
	method valor(){
		if (estado){
			return valor
		}else{
			return valor-10
		}
	}
	
	method estado(){
		return estado
	}
	
	method romperGuitarra(){
		estado=false
	}
}
