#Crear una clase Student con un método constructor que recibirá 3 argumentos (nombre, nota1 y
#nota2). Cada una de las notas tendrá, por defecto, valor 4 en el caso que no se ingrese una nota
#al momento de crear una nueva instancia.
#La clase también debe tener una variable de clase llamada quantity la que será iniciada en 0 y
#se incrementará en 1 cada vez que se instancie un nuevo objeto.
#Crear un módulo Test con un método result. Este método debe calcular el promedio de 2 notas
#y si ese promedio es superior a 4 entregrar un mensaje que debe decir "Estudiante aprobado".
#En caso contrario, enviará un mensaje "Estudiante reprobado".
#Crear un segundo módulo Attendance con un método student_quantity que permita mostrar
#en pantalla la cantidad de estudiantes creados.

module Test
  def result(nota1,nota2)
    promedio = (nota1.to_f+nota2.to_f)/2.0
    if promedio>4.0
      puts "Estudiante Aprobado"
    else
      puts "Estudiante Reprobado"
    end
    return promedio
  end
end

module Attendance
  def student_quantity
    puts self.quantity
  end
end

class Student
  attr_accessor :nota1,:nota2
 include Test
 extend Attendance

  @@quantity = 0
  def initialize(nombre,nota1=4,nota2=4)
    @name = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end
end

estudiantes = []
10.times do |i|
  estudiantes[i] = Student.new("Juan #{i}",i,i+1)
end

estudiantes[0].result(estudiantes[0].nota1,estudiantes[0].nota2)
puts estudiantes[0].result(estudiantes[0].nota1,estudiantes[0].nota2)
Student.student_quantity
