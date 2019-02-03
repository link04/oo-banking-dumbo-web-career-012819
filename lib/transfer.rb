class Transfer
    
  attr_reader :sender , :receiver , :transfer
  attr_reader :status
  
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
    if @status == 'complete'
      sender.balance += @transfer
      receiver.balance -= @transfer
    end
  end

end
