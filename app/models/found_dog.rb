class FoundDog < ApplicationRecord
  belongs_to :dog
  belongs_to :person

  def info
    "Found by #{person.name} at #{location} on #{created_at.strftime("%m/%d/%Y")}."
  end
end