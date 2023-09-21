class Empresa {
	var property honorarioReferencia = 0
	const property profesionales = #{}
	
	method contratar(empleada) {
		profesionales.add(empleada)
	}
	
	method despedir(empleada) {
		profesionales.remove(empleada)
	}
	
	method cantidadProfesionales() {
		return profesionales.size()
	}
	
	method cantidadProfesionalesQueEstudiaronEn(universidad) {
		return profesionales.count({profesional => profesional.universidad() == universidad})
	}
	
	
	method profesionalesCaros() {
		return profesionales.filter({profesional => profesional.honorariosPorHora() > honorarioReferencia})
	}
	
	method universidadesFormadoras() {
		return profesionales.map({profesional => profesional.universidad()}).asSet()
	}
	
	method profesionalMasBarato() {
		return profesionales.min({profesional => profesional.honorariosPorHora()})
	}

	// ningún profesional está habilitado para más de tres provincias	
	method esDeGenteAcotada() {
		return profesionales.all({profesional => profesional.provinciasDondePuedeTrabajar().size() <= 3})
	}
	
}
