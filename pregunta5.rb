#Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo mediante
#Mixin para poder acceder al método dieta desde la instancia. Finalmente imprimir la definición de Hervíboro
module Herviboro
  #def definir
  #  puts "Sólo me alimento de vegetales!"
  #end
 DEFINIR = "Sólo me alimento de vegetales!"
  def dieta
    puts "Soy un Herviboro!"
  end

end

class Animal
  include Herviboro
  def saludar
    puts "Soy un animal!"
  end
end

class Conejo < Animal
  def initialize(name)
    @name = name
  end
end


conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
#conejo.class.definir
puts Herviboro::DEFINIR
