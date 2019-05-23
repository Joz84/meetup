class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :company
      t.string :post

      t.timestamps
    end
  end
end
