import plagas.*

class Elemento {
	method esBuenoParaVidaHumana() {
		return true
	}
	method recibeAtaque(plaga) {
	}
}

class Hogar inherits Elemento {
	var property nivelMugre = 0
	var property nivelConfort = 0
	
	override method esBuenoParaVidaHumana() {
		return nivelMugre <= nivelConfort / 2
	}
	
	override method recibeAtaque(plaga) {
		nivelMugre += plaga.nivelDeDanio()
	}
}

class Huerta inherits Elemento {
	var property capacidadDeProduccion = 0
	var property nivel = 0
	
	override method esBuenoParaVidaHumana() {
		return capacidadDeProduccion > nivel
	}
	override method recibeAtaque(plaga) {
		capacidadDeProduccion -= plaga.nivelDeDanio() * 0.10
		if (plaga.transmiteEnfermedades()) capacidadDeProduccion -= 10
	}
}

class Mascota inherits Elemento {
	var property nivelDeSalud = 0
	
	override method esBuenoParaVidaHumana() {
		return nivelDeSalud > 250
	}
	override method recibeAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) nivelDeSalud -= plaga.nivelDeDanio()
	}
}