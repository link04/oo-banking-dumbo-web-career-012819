class Transfer
    
  attr_reader :sender , :receiver , :transfer
  
  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction
    @status = 'closed' 
  end

end
