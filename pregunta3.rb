class Vehicle

attr_accessor :units
@@units = 0

    def initialize(model, year)
      @model = model
      @year = year
      @start = false
    end

    def engine_start
      @start = true
    end

    def self.units
      @@units
    end

end

class Cars < Vehicle

  def initialize(model,year,patente) ## para el initialize de esta clase no hay problema con los metodos, pero no tengo el nombre ni modelo
    super(model,year)
    @patente = patente
    @@units+=1
  end

  def self.count_units
    puts superclass.units
  end
    # def self.total
      #@@units
    #end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end

  def specs
    puts "Soy el auto #{@model} mi ano es #{@year} mi patente es #{@patente}"

  end
end
#Crear una clase Car que herede de Vehicle
#El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador
#de instancias de Car.
#Crear un método de clase en Car que devuelva la cantidad de instancias.
#El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
#Instanciar 10 Cars.
#Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.

car = []
10.times do |i|
  car[i] = Cars.new("Corsa",2009,'CJCJ55')
end

car[0].engine_start
Cars.count_units

puts car[0].specs
