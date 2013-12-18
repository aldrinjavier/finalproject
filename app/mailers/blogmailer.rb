class Blogmailer < ActionMailer::Base
 
  def register(customer)
    @customer = customer
    mail(:to => customer.email_address, :subject => "Welcome to the movie blog site")
  end
  
end
