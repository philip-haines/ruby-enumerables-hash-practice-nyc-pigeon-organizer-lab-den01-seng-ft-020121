


require "pry"

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |attribute_category, attribute_value|
    attribute_value.each do |attribute, pigeon_name|
      pigeon_name.each do |name|
       if pigeon_list[name] == nil # Checks to see if name is already a key
        pigeon_list[name] = {}
       end
      end
    end
  end

 
  pigeon_list

  
  
end
