# Create your haunted_houses migration here

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.
class CreateHauntedHouses < ActiveRecord::Migration[4.2]
    def change
        create_table :haunted_houses do |column|
            column.string   :name
            column.text     :location
            column.string   :theme
            column.float  :price
            column.boolean  :family_friendly
            column.datetime :opening_date
            column.datetime :closing_date
            column.text     :description

            column.timestamps null: false
        end
    end
end