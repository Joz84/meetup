class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :speaker, foreign_key: true
      t.references :planning, foreign_key: true
      t.integer :slot

      t.timestamps
    end
  end
end
