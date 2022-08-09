
def self.resta(minuendo, sustraendo)
    counter = 0
    resta_var = minuendo

    for resta_var in sustraendo..minuendo do
        
        resta_var < minuendo ? counter += 1 : break
    
    end 
    p " #{minuendo} - #{sustraendo} = #{counter}"
end

def self.multiplicacion(factor_1, factor_2)
    
    output = 0

    factor_2.times do 
        output += factor_1
    end
    p " #{factor_1} * #{factor_2} = #{output}"
end

def self.division(dividendo, divisor)
    counter = 0    
    justforpresentation = dividendo 

    while dividendo >= divisor
        dividendo -= divisor 
        counter += 1
    end

    p " #{justforpresentation} / #{divisor} = #{counter}"
end

def self.potencia(base, exponente)
    
    output = base

    exponente.times do 
        output *= base
    end

    p " #{base} ^ #{exponente} = #{output}"

end

def self.raiz(radicando, indice)
    
end

resta(490,87)
multiplicacion(5,4)
division(5975,45)
potencia(9,7)