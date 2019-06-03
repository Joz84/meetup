class AddTagsToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :tag1, :string
    add_column :speakers, :tag2, :string
  end
end
