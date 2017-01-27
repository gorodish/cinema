require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :name, :funds 

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds']
  end
  
  def self.all()

  end

  def save()

  end

  def update()

  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete()

  end


end