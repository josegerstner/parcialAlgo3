package dominio

import java.time.LocalDateTime
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class Dominio {
	String nombre
	LocalDateTime fechaIngreso
	boolean tieneHijos
	
	new(String nombre, LocalDateTime fechaIngreso, boolean tieneHijos){
		this.nombre = nombre
		this.fechaIngreso = fechaIngreso
		this.tieneHijos = tieneHijos
	}
	
	def anioIngreso(){
		fechaIngreso.getYear.toString
	}
	
	def mesIngreso(){
		fechaIngreso.getMonthValue.toString
	}
	
	def getDiaIngreso(){
		fechaIngreso.getDayOfMonth.toString		
	}
	
	def String getFechaIngreso(){
		diaIngreso + "/" + mesIngreso + "/" + anioIngreso
	}
	
	def int getAntiguedad(){
		LocalDateTime.now.year - fechaIngreso.year
	}
	
	override toString(){
		nombre
	}
}