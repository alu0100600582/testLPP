class Examen

 attr_accessor :exam, :npreguntas
    def initialize(n)
      @exam= List.new
      @npreguntas=n
    end
   
    def add_pregunta(pre)
        @exam.push(pre)
    end
   
end  