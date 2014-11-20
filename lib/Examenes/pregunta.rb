class Pregunta
    attr_reader :preg, :correcta, :dif
    include Comparable
    
    def initialize (preg, correcta, dif)
        @preg = preg
	@correcta = correcta
        @dif = dif
    end
    def to_s
        aux = @preg + "\n"
        aux
    end
    def <=> (other)
        @dif <=> other.dif
    end
    
    def == (other)
        @preg == other.preg
    end
    
    
end
