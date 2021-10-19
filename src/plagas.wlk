class Plaga {
	var property poblacion = 0
	
	method nivelDeDanio() {
		return poblacion
	}
	method transmiteEnfermedades() {
		return poblacion >= 10
	}
	
}

class Cucarachas inherits Plaga {
	var property pesoPromedio = 0
	
	override method nivelDeDanio() {
		return super() / 2
	}
	override method transmiteEnfermedades() {
		return super() and pesoPromedio >= 10
	}
}

class Pulgas inherits Plaga {
	override method nivelDeDanio() {
		return super() * 2
	}
}

class Garrapatas inherits Pulgas {
}

class Mosquitos inherits Plaga {
	override method transmiteEnfermedades() {
		return super() and poblacion % 3 == 0
	}
}