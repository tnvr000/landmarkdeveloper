class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :contact_no
      t.string :note
      t.string :city

      t.timestamps
    end
  end
end
