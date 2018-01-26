class Boat
  def allowed_aboard?(inventory)
    inventory.include?('lifejacket')
  end
end