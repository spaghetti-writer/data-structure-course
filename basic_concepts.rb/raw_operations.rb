
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

def self.raiz_cuadrada(numero)
    
    temp = 0
    base = (numero / 2).to_f

    while ((temp - base) != 0)
        temp = base
        base = (temp + ( numero / temp)) / 2
    end

    p base
end

def self.numero_primo(numero)
    
    divisor = 2
    sobrante = numero % divisor
    is_primo = (numero == 0 || numero == 1) ? false : true

    while (divisor < (numero/2)) && (is_primo)
        sobrante = numero % divisor
        is_primo = sobrante != 0 ? true : false unless numero == 2
        divisor += 1
    end
    
    p "#{numero} #{is_primo}"
end

def self.numero_perfecto(numero)

    divisor = 1
    salida = 0
    
    while divisor <= (numero / 2)
        if numero % divisor == 0
            salida += divisor
        end
        divisor += 1
    end
    
    # p "numero #{numero} suma divisores #{salida} - #{numero != salida || numero == 0 ? 'no' : "" } es numero perfecto"
    if numero != 0 && salida == numero
        p "#{numero} es perfecto"
    end
end

def numero_guay(numero)
    
    suma = 1

    for i in 2..numero do 
        suma += i
        if suma >= numero
            break
        end
    end

    p "#{numero} #{(numero == suma) ? '' : "NO"} es un numero guay"

end

# resta(490,87)
# multiplicacion(5,4)
# division(5975,45)
# potencia(9,7)
# raiz_cuadrada(25)
# raiz_variable(27,3)

# 100000.times do |i|
#     numero_primo(i)
# end
# 10000.times do |i|
#     numero_perfecto(i)
# end
1000.times do |i|
    numero_guay(i)
end
#numero_guay(1000000)