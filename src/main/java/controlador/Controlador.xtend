package controlador

import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import dominio.Dominio
import repositorio.Repositorio

@Observable
@Accessors
class Controlador {
	var Dominio empleadoSeleccionado
	val Repositorio repo = new Repositorio
	
	def getEmpleados(){
		repo.getEmpleados
	}

	@Dependencies("empleadoSeleccionado")
	def getFechaIngreso(){
		empleadoSeleccionado.fechaIngreso
	}
	@Dependencies("empleadoSeleccionado")
	def getAntiguedad(){
		empleadoSeleccionado.antiguedad
	}
	@Dependencies("empleadoSeleccionado")
	def getTieneHijos(){
		empleadoSeleccionado.tieneHijos
	}
}