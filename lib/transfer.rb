require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if valid? && status == "pending"
      if amount < @sender.balance
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"

      end
    end


  end




end
