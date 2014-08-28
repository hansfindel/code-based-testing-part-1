# Test pendientes:

* Hacer los tests correspondientes a unit/student_spec.rb

* Probar todas las factories

* Refactorizar el método fix_grades en course

* Refactorizar el método fix_grades para que las validaciones de cada modelo estén en ellos mismos. 

* Hacer un código y el test que verifique el siguiente protocolo de "manejo de notas":
	* Para todos los alumnos, sacar la peor nota solo si hay 1
	* Si con eso está pasando más del 50%, ok
	* Si no, obtener la distribución de notas y "hacer pasar" a la mediana. 
		* "Hacer pasar" implica desplazar la curva, multiplicando las notas obtenidas por (3.95/"promedio del peor que pasa")