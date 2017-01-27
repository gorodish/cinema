require_relative("../db/sql_runner")

class Film

  attr_reader :id
  attr_accessor :title, :price 

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price']
  end
  
  def self.all()

  end

  def save()

  end

  def update()

  end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def delete()

  end


end