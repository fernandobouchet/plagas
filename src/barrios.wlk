import elementos.*

class Barrios {
	const elementos = []
	
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	method quitarElemento(elemento) {
		elementos.remove(elemento)
	}
	method esElementoBueno(elemento) {
		return elemento.esBuenoParaVidaHumana()
	}
	method elementosBuenos() {
		return elementos.count({ elem => elem.esBuenoParaVidaHumana() })
	}
	method elementosMalos() {
		return elementos.count({ elem => not elem.esBuenoParaVidaHumana() })
	}
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}
	
}