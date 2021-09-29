class Dog < ApplicationRecord
  has_many :found_dogs
  has_many :people, through: :found_dogs
end