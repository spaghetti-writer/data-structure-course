def min_max_strings
    concat_names_services_products = ["Foto Retrato min", "Foto producto min", "Suscripción de fotografías min", "Suscripción de videos min", " min", " min", " min", " min"]
    names_products_services = []
        sub_indice = 0
        concat_names_services_products.each_with_index do |item, index|
        
        names_products_services[sub_indice] = item + " min"
        names_products_services[sub_indice + 1] = item + " max"
        
        sub_indice += 2
    end
    p names_products_services
end

def order_min_max_number

    concat_mano_obra_min = [1,2,3,4,5,6,7,8,9]
    concat_mano_obra_max = [9,8,7,6,5,4,3,2,1]
    mano_obra_products_services = []
    sub_indice_sales = 0

    concat_mano_obra_min.each_with_index do |item, index|

        mano_obra_products_services[sub_indice_sales] = item
        mano_obra_products_services[sub_indice_sales + 1] = concat_mano_obra_max[index]

        sub_indice_sales += 2

    end

    p mano_obra_products_services

end

order_min_max_number()