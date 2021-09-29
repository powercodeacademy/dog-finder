class Person < ApplicationRecord
  has_many :found_dogs
  has_many :dogs, through: :found_dogs
end