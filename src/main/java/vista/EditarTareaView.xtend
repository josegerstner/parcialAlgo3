package vista

import org.uqbar.arena.aop.windows.TransactionalDialog
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Button
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.CheckBox
import dominio.Tarea

class EditarTareaView extends TransactionalDialog<Tarea>{
	
	new(WindowOwner owner, Tarea model) {
		super(owner, model)
	}
	
	override protected createFormPanel(Panel mainPanel) {
		this.title = "Editar tarea"
		
		var Panel columna = new Panel(mainPanel).layout = new ColumnLayout(2)
		new TextBox(columna).value <=> "description"
		new CheckBox(columna).value <=> "estaHecho"
		new Button(mainPanel) => [
			caption = "OK"
			onClick(|this.accept)
			setAsDefault
			disableOnError
		]
	}
	
}