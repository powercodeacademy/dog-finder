class CreateFoundDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :found_dogs do |t|
      t.integer :person_id
      t.integer :dog_id
      t.string :location
      t.string :image_url
      t.timestamps
    end
  end
end
