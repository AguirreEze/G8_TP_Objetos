import Musico.*

class Imparero inherits Musico{
	

	override method interpretaBien(unaCancion){
		return (unaCancion.duracion().even(	) || super(unaCancion))
	}
	

}