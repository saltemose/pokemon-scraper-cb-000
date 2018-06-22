class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(:id, :name, :type, :db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save
    @db.execute("INSERT INTO cats (name, type) VALUES (?, ?, ?)", @name, @type)
  end


end
