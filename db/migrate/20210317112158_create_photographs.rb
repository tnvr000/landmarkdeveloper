class CreatePhotographs < ActiveRecord::Migration[5.2]
  def change
    create_table :photographs do |t|
      t.string :caption
      t.attachment :photo
      t.boolean :use_in_carousel, default: false

      t.timestamps
    end
  end
end
