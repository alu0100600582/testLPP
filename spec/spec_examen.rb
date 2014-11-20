require_relative "spec_helper"
require_relative "../lib/Examenes"

describe Examen do
	
	before :all do
		@exam= Examen.new(2)
		@pregunta1= S_simple.new('1) Cuanto es la suma de 2+2?', ['1','2','22','ninguna de las anteriores'],'ninguna de las anteriores')
		@pregunta2= Vof.new('2) 2+3 es lo mismo que 3+2 por la propiedad asociativa ','falso')
		@exam.add_pregunta(@pregunta1)
		@exam.add_pregunta(@pregunta2)
		
	def @exam.resolver(resp)
				preg_actual=0
				preg_correctas=0
					while preg_actual<@npreguntas
						preg_actual=preg_actual+1
						puts @exam.get_ini().pregunta
						puts @exam.get_ini().respuesta
						puts ""
						
						if @exam.get_ini().resp_correcta(resp[preg_actual-1])
							preg_correctas=preg_correctas+1
						end
						@exam.pop()
						puts""
					end
					print "Ha respondido bien "
						print preg_correctas
						print " preguntas de "
						print @npreguntas
						return preg_correctas
	end
end
	
	describe "probando clase examen"do
		it "se inserta bien la pregunta" do
			@exam.exam.get_ini().should eq(@pregunta1)
		end
		it "se inserta bien el enunciado de la pregunta" do
			@exam.exam.get_ini().pregunta.should eq('1) Cuanto es la suma de 2+2?')
		end
		it "se insertan bien las respuestas de la pregunta" do
			@exam.exam.get_ini().respuesta.should eq(['1','2','22','ninguna de las anteriores'])
		end
		it "se inserta bien la respuesta correcta de la pregunta" do
			@exam.exam.get_ini().correcta.should eq('ninguna de las anteriores')
		end
	end
	
	describe "resolver el examen" do
		it "resolviendo examen" do
			@exam.resolver(['2','falso']).should eq(1)
			@exam.add_pregunta(@pregunta1)
			@exam.add_pregunta(@pregunta2)
		end
	end
	
end
