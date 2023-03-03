class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def character_list
    self.characters.map(&:name)
  end

  def show_list
    self.shows.map(&:name)
  end
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end