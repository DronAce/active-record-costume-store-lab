# Create your costume_stores migration here

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

class CreateCostumeStores < ActiveRecord::Migration[4.2]
    def change
        create_table :costume_stores do |column|
            column.string   :name
            column.string   :location   
            column.integer  :costume_inventory
            column.integer  :num_of_employees
            column.boolean  :still_in_business
            column.datetime :opening_time
            column.datetime :closing_time

            column.timestamps null: false
        end
    end
end