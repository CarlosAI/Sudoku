class SudokuController < ApplicationController
  def index
  	if params["nivel"].present?
  		dificultad = 1
  		if params["nivel"] == "n1"
  			dificultad = 4
  			#36, 4 por fila
  		elsif params["nivel"] == "n2"
  			dificultad = 5
  			#45, 5 por fila
  		else
  			dificultad = 6
  			#54, 6 por fila
  		end
  		@bloqueados = []
  		adios = false
  		basico = []
  		for i in 0..8
	  		basico = [1,2,3,4,5,6,7,8,9]
	  		for j in 1..dificultad
	  			adios = basico.sample(1)
	  			@bloqueados << adios[0]
	  			basico.delete(adios[0])
	  			
	  		end
	  	end

	  	puts @bloqueados
	  	puts "&&&&&&&&&&&&&&&&&&&&&&&"
	  	puts @bloqueados.size
  		puts "##/////////////////////////"
  		#require "#{Rails.root}/app/classes/sudoku.rb"
  		
  		
  		puzzle = SudokuFinal.new()
		puts puzzle.class
		a = puzzle.to_s
		puts "La a es"
		#puts a
		puts a.size
		numeros = []
		a.each_char do |x|
			numeros << x.to_i
		end
		#puts numeros
		los_numeros = numeros
		
		numeros2 = []
		a.each_char do |x|
			numeros2 << x.to_i
		end
		@los_chidos = numeros2
		puts "los chidos son"
		puts @los_chidos

		transformada = []
		a = 0
		b = 0
		for i in 0..9
			bloqueado = @bloqueados[b..(b+dificultad-1)]
			bloqueado.each do |x|
				los_numeros[x+a] = 0
			end
			a = a + 9
			b = b + dificultad
		end
		@los_numeros_finales = los_numeros
		puts "dijf"
		puts @los_numeros
  	end
  end

  def choose
  end
end
