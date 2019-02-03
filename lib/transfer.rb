class Transfer
    
  attr_reader :sender , :receiver , :transfer
  
  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
  end

  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    
  end
  
  def close_account
    @status = 'closed' 
  end

end
