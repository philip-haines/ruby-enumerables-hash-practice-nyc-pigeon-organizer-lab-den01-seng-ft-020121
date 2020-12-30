


require "pry"

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |attribute_category, attribute_value| 
  # Cateogry: Color, Gender, Lives
  # Value: (purple, grey, white, brown) (male, female) (subway, Central Park, Library)
  
    attribute_value.each do |attribute, pigeon_name|
      
      pigeon_name.each do |name|
        
       if pigeon_list[name] == nil # Checks to see if name is already a key
        pigeon_list[name] = {}
       end
       
       if pigeon_list[name][attribute_category] == nil # Checks for key "atribute category" key
         pigeon_list[name][attribute_category] = []
       end 
       
       pigeon_list[name][attribute_category] << attribute.to_s
       
      end
    end
  end

 
  pigeon_list

  
  
end
