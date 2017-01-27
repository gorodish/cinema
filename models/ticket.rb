require_relative("../db/sql_runner")

class Ticket

  def initialize(options)

  end
  
  def self.all()

  end

  def save()

  end

  def update()

  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

  def delete()

  end


end