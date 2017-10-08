import Presentacion.*
import hipodromoSanIsidro.*
import Cancion.*
import erroresDePdpalooza.*


object pdpalooza inherits Presentacion(15,12,2017,hipodromoSanIsidro,{}){
var aliciaEnElPais = new Cancion("Cancion de Alicia en el pais",510,"Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.")

	override method agregarCantantes(unCantante){
		
			if (if(unCantante.habilidad() > 70){} else{self.error("el cantante es muy choto")} &&
			if(unCantante.esCompositor()) {} else(self.error("el cantante no compuso nada")) &&
			if(unCantante.interpretaBien(aliciaEnElPais)) {}else{"no interpreta bien: Alicia en el Pais "}) {
			   cantantes.add(unCantante)}
		}
	
}