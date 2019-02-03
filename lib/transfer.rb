class Transfer
    
  attr_reader :sender , :receiver , :transfer
  
  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
    @status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction
    if sender.valid? && sender.balance >= @transfer
      sender.balance -= @transfer
      receiver.balance += @transfer
    end
  end
  
  def reverse_transfer
     sender.balance += @transfer
      receiver.balance -= @transfer
  end

end
