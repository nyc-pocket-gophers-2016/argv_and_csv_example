module Rentable
  def rented?
    @rented
  end

  def rent!
    @rented = true
  end

  def move_out!
    @rented = false
  end 
end