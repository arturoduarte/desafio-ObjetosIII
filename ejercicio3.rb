# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.

class Vehicle
 attr_reader :start
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end
	
	def engine_start
		@start = true
		return @start
	end
end

class Car < Vehicle
	# attr_reader :start
	@@instances = 0
	def initialize(model, year)
		super
		@@instances += 1 #contador de instancias de Car.
	end
	
	#devuelve cantidad de instancias de Car.
	def self.get_number_of_instances
		@@instances
	end

	def engine_start
		super
		puts "El motor se ha encendido!!"
	end
end


# Instanciar 10 Cars.
10.times do |i|
	Car.new(2010,2010)
end

#imprimir nro de instancias
auto =  Car.get_number_of_instances
puts auto

iniciar_motor = Car.new(2010,1998)
puts iniciar_motor.engine_start

