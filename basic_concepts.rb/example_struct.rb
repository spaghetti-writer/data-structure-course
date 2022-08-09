

class Example < Struct.new(:id, :product_id, :service_id, :first_1, :first_2, :first_3, :first_4, :first_5, :first_6, :first_7, :first_8, :first_9, :first_10,
  :first_11, :first_12, :second_1, :second_2, :second_3, :second_4, :second_5, :second_6, :second_7, :second_8,
  :second_9, :second_10, :second_11, :second_12); end
  
def method_example(_collection1, _collection2, _type)
  output = []
  attribute = "#{_type}_id"
  
  _collection1.each do |item1|
    
    ex_item = Example.new(nil, nil, nil, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
    ex_item[attribute] = item.id

    _collection2.each do |item2|

      if item2[attribute] == item1.id
      
        ## Calculos del metodo
        break

      end

    end
   
    output << ex_item
  end 

  output
end
  






























  # collection1 = []
  # collection2 = []
  # 10.times do |index|
  # end