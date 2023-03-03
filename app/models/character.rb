class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
 
  def actor_object
    self.actor
  end

  def show_object
    self.show
  end

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end
end