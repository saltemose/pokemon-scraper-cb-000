class Pokemon

  attr_accessor :name, :type, :db

  def initialize(db)
    @db = db
    @db.each do |attr, val|
      self.send("#{attr}=", val)
    end
  end
end
