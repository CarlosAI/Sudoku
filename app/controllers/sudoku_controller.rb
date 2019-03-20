class SudokuController < ApplicationController
  def index
  	if params["nivel"].present?
  		dificultad = 1
  		if params["nivel"] == "n1"
  			dificultad = 1
  		elsif params["nivel"] == "n2"
  			dificultad = 2
  		else
  			dificultad = 3
  		end

  		
  		#require "#{Rails.root}/app/classes/sudoku.rb"
  		
  		
  		puzzle = SudokuFinal.new()
		puts puzzle.class
		a = puzzle.to_s
		puts "La a es"
		puts a
		puts a.size
  				
  	end
  end

  def choose
  end
end
