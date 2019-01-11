def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attr, infos|
    infos.each do |identity, names|
      names.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        
        if !new_hash.has_key?(attr)
          new_hash[name][attr] = []
        end
        
        if !new_hash[name][attr].include?(identity)
          new_hash[name][attr].map(identity.to_s)
        end
      end
    end
  end
  new_hash
end

