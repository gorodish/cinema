require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require( 'pry-byebug' )

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()


customer1 = Customer.new({'name' => 'McManus', 'funds' => 12.00})
customer1.save()
customer2 = Customer.new({'name' => 'Keaton', 'funds' => 20.00})
customer2.save()
customer3 = Customer.new({'name' => 'Fenster', 'funds' => 26.75})
customer3.save()
customer4 = Customer.new({'name' => 'Hockney', 'funds' => 96.15})
customer4.save()
customer5 = Customer.new({'name' => 'Verbal', 'funds' => 1.00})
customer5.save()
customer6 = Customer.new({'name' => 'Kobayashi', 'funds' => 9.99})
customer6.save()

film1 = Film.new({'title' => 'The Usual Suspects', 'price' => 7.50})
film1.save()
film2 = Film.new({'title' => 'The Magnificent Seven', 'price' => 1.50})
film2.save()
film3 = Film.new({'title' => 'Pulp Fiction', 'price' => 12.50})
film3.save()
film4 = Film.new({'title' => 'The Big Lebowski', 'price' => 8.99})
film4.save()
film5 = Film.new({'title' => 'Superman', 'price' => 5.00})
film5.save()
film6 = Film.new({'title' => 'Das Metke Met Rode Haren', 'price' => 9.50})
film6.save()

ticket1 = Ticket.new({'cust_id' => customer6.id, 'film_id' => film3.id})
ticket1.save()
ticket2 = Ticket.new({'cust_id' => customer5.id, 'film_id' => film1.id})
ticket2.save()
ticket3 = Ticket.new({'cust_id' => customer4.id, 'film_id' => film1.id})
ticket3.save()
ticket4 = Ticket.new({'cust_id' => customer1.id, 'film_id' => film2.id})
ticket4.save()
ticket5 = Ticket.new({'cust_id' => customer2.id, 'film_id' => film2.id})
ticket5.save()

binding.pry

nil