class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(db)
    db.each do |attr, val|
      if attr == "id:"
        @id = val
      elsif attr == "name:"
        @name = val
      else @type = val
      end
    end
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num)
    Pokemon.new(id: pokemon_data[0][0], name: pokemon_data[0][1], type: pokemon_data[0][2], db: db)
  end
end
