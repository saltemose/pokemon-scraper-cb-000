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

  def self.find(id_num, db)
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).flatten
    id = pokemon_data[0]
    name = pokemon_data[1]
    type = pokemon_data[2]

    self.new(id: id, name: name, type: type, db: db)
  end

end
