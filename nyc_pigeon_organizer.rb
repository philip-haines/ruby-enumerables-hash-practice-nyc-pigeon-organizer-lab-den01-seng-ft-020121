


require "pry"

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |attribute_category, value_hash| 
  # attribute_category: Color, Gender, Lives
  # value_hash: { attribue => {values}, attribue => {values} ... } 
  
    value_hash.each do |attribute, pigeon_name|
      # attribute => Attribute Name (eg purple, grey, Library)
      # pigeon_name => Array of Pigeon Name Strings
      
      pigeon_name.each do |name|
        # name => Each Pigeon's Name as a string
        
       if pigeon_list[name] == nil # Checks to see if name is already a key
        pigeon_list[name] = {} # Creates key using name variable 
       end
       
       if pigeon_list[name][attribute_category] == nil 
          pigeon_list[name][attribute_category] = []
          # creates hash of hash point to an array with first key being name, second key beig attribute category
       end 
       
       pigeon_list[name][attribute_category] << attribute.to_s
       # Shovels attributes into array with hash of hash 
       
      end
    end
  end

 
  pigeon_list # Returns final hash 

  
  
end
