An app for finding dogs

# DATABASE

Dog
t.string :name
t.integer :age

Person
t.string :name
t.string :phone_number

FoundDog
t.integer :person_id
t.integer :dog_id
t.string :location
t.string :image_url

-