def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, infos|
    infos.each do |identity, names|
      names.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        
        if !new_hash.has_key?(attribute)
          new_hash[name][attribute] = []
        end
        
        if !new_hash[name][attribute].include?(identity)
          new_hash[name][attribute] << identity.to_s
        end
      end
    end
  end
  new_hash
end

