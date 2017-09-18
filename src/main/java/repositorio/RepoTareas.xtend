package repositorio

import java.util.List
import dominio.Tarea
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class RepoTareas {
	var List<Tarea> repo = newArrayList
	static var RepoTareas instance
	val Tarea entregaTPAlgo3 = new Tarea("Entrega 1 Algo 3")
	val Tarea parcialAlgo3 = new Tarea("Parcial Algo 3")
	val Tarea estudiarDB = new Tarea("Estudiar para DB")
	
	private new() {
		repo = #[entregaTPAlgo3, parcialAlgo3, estudiarDB]
	}

	public static def getInstance() {
		if (instance === null) {
			instance = new RepoTareas
		}
		return instance
	}
	
}