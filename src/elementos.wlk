class Elemento {
	method esBuenoParaVidaHumana() {
		return true
	}
}

class Hogar inherits Elemento {
	var property nivelMugre = 0
	var property nivelConfort = 0
	
	override method esBuenoParaVidaHumana() {
		return nivelMugre <= nivelConfort / 2
	}
}

class Huerta inherits Elemento {
	var property capacidadDeProduccion = 0
	var property nivel = 0
	
	override method esBuenoParaVidaHumana() {
		return capacidadDeProduccion > nivel
	}
}

class Mascota inherits Elemento {
	var property nivelDeSalud = 0
	
	override method esBuenoParaVidaHumana() {
		return nivelDeSalud > 250
	}
}