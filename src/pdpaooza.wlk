import Presentacion.*
import hipodromoSanIsidro.*
import Cancion.*
import erroresDePdpalooza.*


object pdpalooza inherits Presentacion(15,12,2017,hipodromoSanIsidro,{}){
var aliciaEnElPais = new Cancion("Cancion de Alicia en el pais",510,"Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz.")

	override method agregarCantantes(unCantante){
		
			if (if(unCantante.habilidad() > 70){} else{self.error("el cantante es muy choto")} &&
			if(unCantante.esCompositor()) {} else(self.error("el cantante no compuso nada")) &&
			if(unCantante.interpretaBien(aliciaEnElPais)) {}else{"no interpreta bien: Alicia en el Pais "}) {
			   cantantes.add(unCantante)}
		}
	
}