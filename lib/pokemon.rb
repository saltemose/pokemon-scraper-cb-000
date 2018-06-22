class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(db)
    @db = db
    @db.each do |attr, val|
      if attr = "id"
        @id = val
      elsif attr = "name"
        @name = val
      else attr = "type"
        @type = val
      end
    end
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon_data = db.execute("SELECT id, name, type FROM pokemon WHERE id = ?", id).flatten
    self.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], hp: pokemon_data[3], db: db)
  end

end
