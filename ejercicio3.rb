# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.

class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@@start = false
	end
	
	def engine_start
		@@start = true
	end
end

#1- creación de clase car que herede de Vehicle
class Car < Vehicle
	@@instances = 0
	def initialize(model, year)
		@@instances += 1 #2- contador de instancias de Car.
	end
	
	#3- devuelve cantidad de instancias de Car.
	def self.get_number_of_instances
		@@instances
	end
	
	#4- metodo heredado debe realiazar 2 puts
	def engine_start
		super #cambia la variable a true
		puts "El motor se ha encendido!!"
	end
end


iniciar_motor = Car.new("Sedan",2007)
puts iniciar_motor.engine_start



#5- Instanciar 10 Cars.
10.times do |i|
	Car.new("Sedan",2011)
end

#6- imprimir nro de instancias
puts "La Clase se ha instanciado #{Car.get_number_of_instances} veces!! \n\n"




