package modelo

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import dominio.Tarea
import java.util.List
import repositorio.RepoTareas

@Observable
@Accessors
class ModeloVistaTareas {
	var Tarea tareaSeleccionada
	var String tareaNueva
	var String nuevoNombre
	var List<Tarea> repo = newArrayList
	
	new(){
		RepoTareas.instance.repo.forEach[tarea | repo.add(tarea)]
	}
	
	def agregarTarea(){
		repo.add(new Tarea(tareaNueva))
	}
	
	def nombreTarea(){
		tareaSeleccionada.description
	}
	
	def setearHecho(){
		tareaSeleccionada.estaHecho = !tareaSeleccionada.estaHecho
	}
	
	def getHecho(){
		if(tareaSeleccionada.estaHecho){
			"SI"
		}else{
			"NO"
		}
	}
	
	def editarTarea(){
		if(nuevoNombre == "" || nuevoNombre === null)
			nuevoNombre = tareaSeleccionada.description
	}
}