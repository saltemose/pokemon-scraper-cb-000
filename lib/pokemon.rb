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
