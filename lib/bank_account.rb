class BankAccount
    
  attr_reader :name ,:balance, :status
  attr_accessor 
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    puts "Your balance is $#{@balance}."
    
  end
  
  def valid?
    @balance > 0 && @status == 'open' ? true : false
  end
  
  def close_account
    @status = 'closed' 
  end

end
