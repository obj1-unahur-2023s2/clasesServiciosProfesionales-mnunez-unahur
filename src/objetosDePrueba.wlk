import universidades.*
import profesionales.*
import empresas.*

// provincias
const santaFe = "Santa Fe" 
const cordoba = "Córdoba"
const buenosAires = "Buenos Aires"
const entreRios = "Entre Ríos"
const corrientes = "Corrientes"
const misiones = "Misiones"


// defino algunas universidades
const unsam = new Universidad(provincia=buenosAires, honorarioRecomendado=3500)
const unahur = new Universidad(provincia=buenosAires, honorarioRecomendado=8800)
const unne = new Universidad(provincia=corrientes, honorarioRecomendado=4200)
const unr = new Universidad(provincia=santaFe, honorarioRecomendado=2800)



// Defino algun@s profesionales
const juana = new ProfesionalVinculado(universidad = unr)
const melina = new ProfesionalAsociado(universidad = unne)
const rocio = new ProfesionalLibre(
	universidad = unahur,
	honorario = 5000 ,
	provincias = #{santaFe, cordoba, buenosAires}
)
const luciana = new ProfesionalLibre(
	universidad = unr,
	honorario = 3200 ,
	provincias = #{santaFe, entreRios}
)

//const lourdes = new ProfesionalLibre(
//	universidad = unahur,
//	honorario = 7000 ,
//	provincias = #{santaFe, entreRios, cordoba, buenosAires}
//)
//
//const luci = new ProfesionalVinculado(universidad = unahur)
//
//




