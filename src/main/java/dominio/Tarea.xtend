package dominio

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class Tarea {
	String description
	boolean estaHecho = false
	
	new(String desc){
		description = desc
	}

	override toString(){
		description
	}
}