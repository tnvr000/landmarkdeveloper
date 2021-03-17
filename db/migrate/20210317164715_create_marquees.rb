class CreateMarquees < ActiveRecord::Migration[5.2]
  def change
    create_table :marquees do |t|
      t.string :text

      t.timestamps
    end
  end
end
