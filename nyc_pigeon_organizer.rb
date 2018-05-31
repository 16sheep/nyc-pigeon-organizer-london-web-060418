def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  data.each { |attribute, specification|
    
    specification.each {|property, names|
      
      names.each {|item|
        
        if organized_pigeons.key?(item) == FALSE
            organized_pigeons[item] = {}
        end
        
        if organized_pigeons[item].key?(attribute) == FALSE
            organized_pigeons[item][attribute] = []
        end
        
        if specification.values.includes?(item)
          organized_pigeons[item][attribute] << property
      }
      
    }
  }
  print organized_pigeons
  organized_pigeons
end

def organize_schools(schools)
  organized_hash = {}
  print schools
  schools.each do |school, location_hash|
    location_key = location_hash[:location]
    if(organized_hash.key?(location_key))
      organized_hash[location_key].push(school)
    else
      organized_hash[location_key] = []
      organized_hash[location_key].push(school)
    end
  end

 organized_hash
end