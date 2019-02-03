class Transfer
    
  attr_reader :sender , :receiver , :amount
  attr_accessor :balance, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    @balance > 0 && @status == 'open' ? true : false
  end
  
  def close_account
    @status = 'closed' 
  end

end
