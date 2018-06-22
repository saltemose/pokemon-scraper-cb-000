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


end
