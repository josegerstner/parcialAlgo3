package repositorio

import java.util.List
import java.time.LocalDateTime
import java.time.Month
import dominio.Dominio

class Repositorio {
	var List<Dominio> empleados
	
	new(){
		val Dominio jefe = new Dominio("Pepe", LocalDateTime.of(2007,Month.MARCH,11,6,1), true)
		val Dominio secretaria = new Dominio("Pepa", LocalDateTime.of(2011,Month.JULY,02,6,1), false)
		val Dominio cadete = new Dominio("Pepo", LocalDateTime.of(2015,Month.DECEMBER,15,6,1), false)
		
		empleados = #[jefe, secretaria, cadete]
	}
	
	def getEmpleados(){
		empleados
	}
}