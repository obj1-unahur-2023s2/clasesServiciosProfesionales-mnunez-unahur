import objetosDePrueba.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{entreRios, corrientes, santaFe} }
	
	method honorariosPorHora() { return 3000 }
}


class ProfesionalVinculado {
	var property universidad
	
	method honorariosPorHora() {
		return universidad.honorarioRecomendado()
	}
	method provinciasDondePuedeTrabajar() { 
		return #{universidad.provincia()}
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora
	const property provinciasDondePuedeTrabajar = #{}
	
	method asignarNuevaProvincia(prov) {
		provinciasDondePuedeTrabajar.add(prov)
	}
	
}






