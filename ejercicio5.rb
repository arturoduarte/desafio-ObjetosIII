class Rectangulo
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end

	def perimetro
		perimetro = (2 * @largo) + (2 * @ancho)
		puts "El perimetro del Rectandulo es #{perimetro}"
	end

	def area
		area = @largo * @ancho
		puts "El area del Rectandulo es #{area}"
	end

	def lados
		print "La medidas de los lados son: largo = #{@largo} - ancho #{@ancho} "
	end
end

class Cuadrado
	def initialize(lado)
		@lado = lado 
	end

	def perimetro
		perimetro = @lado * 4
		puts "El Perimetro del Cuadrado es #{perimetro}"
	end

	def area
		area = @lado * @lado
		puts "El Área del Cuadrado es #{area}"
	end

	def lados
		print "La medidas de los lados son: largo = #{@lado}"
	end
end

cuadrado = Cuadrado.new(2)
cuadrado.area
cuadrado.perimetro

rectangulo = Rectangulo.new(2,4)
rectangulo.area
rectangulo.perimetro



