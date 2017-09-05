package test

import java.time.LocalDateTime
import java.time.Month
import org.junit.Test
import org.junit.Assert
import dominio.Dominio

class Tests {
	val Dominio jefe = new Dominio("Pepe", LocalDateTime.of(2007,Month.MARCH,11,6,1), true)
	val Dominio secretaria = new Dominio("Pepa", LocalDateTime.of(2011,Month.JULY,02,6,1), false)
	val Dominio cadete = new Dominio("Pepo", LocalDateTime.of(2015,Month.DECEMBER,15,6,1), false)
	
	@Test
	def obtenerFechaIngresoJefe(){
		Assert.assertEquals("2007", jefe.anioIngreso)
	}
	
	@Test
	def obtenerMesIngresoSecretaria(){
		Assert.assertEquals("7", secretaria.mesIngreso)
	}
	
	@Test
	def obtenerDiaIngresoCadete(){
		Assert.assertEquals("15", cadete.diaIngreso)
	}
	
	@Test
	def obtenerTieneHijosJefe(){
		Assert.assertTrue(jefe.tieneHijos)
	}
	
	@Test
	def obtenerNombreSecretaria(){
		Assert.assertEquals("Pepa", secretaria.nombre)
	}
}