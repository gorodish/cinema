require_relative("../db/sql_runner")

class Ticket
  
  attr_reader :id
  attr_accessor :cust_id, :film_id 

  def initialize(options)
    @id = options['id'].to_i
    @cust_id = options['cust_id'].to_i
    @film_id = options['film_id'].to_i
  end
  
  def self.all()
    sql = "SELECT * FROM tickets"
    tickets = SqlRunner.run(sql)
    result = Ticket.get_many(sql)
    return result
  end

  def save()
    sql = "INSERT INTO tickets (cust_id, film_id)
      VALUES ('#{ @cust_id }', '#{ @film_id }') RETURNING id"
    ticket = SqlRunner.run( sql ).first
    @id = ticket['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    tickets = SqlRunner.run(sql)
    result = tickets.map { |ticket| Ticket.new( ticket ) }
    return result
  end

end