class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :musician
      t.string :event_id
      t.string :venue
      t.datetime :date
      t.string :city
      t.integer :price

      t.timestamps
    end
  end
end
