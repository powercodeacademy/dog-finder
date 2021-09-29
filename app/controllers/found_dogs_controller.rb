class FoundDogsController < ApplicationController
  def index
    @found_dogs = FoundDog.all
  end
end