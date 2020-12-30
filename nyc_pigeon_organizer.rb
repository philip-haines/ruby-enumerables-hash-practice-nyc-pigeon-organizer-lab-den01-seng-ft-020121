


require "pry"

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |attribute_category, value_hash| 
  # attribute_category: Color, Gender, Lives
  # value_hash: { attribue => {values}, attribue => {values} ... } 
  
    value_hash.each do |attribute, pigeon_name|
      # attribute => 
      # pigeon_name => Array of Pigeon Name Strings
      
      pigeon_name.each do |name|
        
       if pigeon_list[name] == nil # Checks to see if name is already a key
        pigeon_list[name] = {}
       end
       
       if pigeon_list[name][attribute_category] == nil 
         pigeon_list[name][attribute_category] = []
       end 
       
       pigeon_list[name][attribute_category] << attribute.to_s
       
      end
    end
  end

 
  pigeon_list

  
  
end
