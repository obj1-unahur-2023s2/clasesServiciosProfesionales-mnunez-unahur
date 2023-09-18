// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() {
		return universidad.honorarioRecomendado()
	}
	method provinciasDondePuedeTrabajar() { 
		return #{universidad.provincia()}
	}
	
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorario
	var provincias
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { 
		return provincias
	}

	method honorariosPorHora() {
		return honorario
	}
	
	method asignarNuevaProvincia(prov) {
		provincias.add(prov)
	}
	
}






