class CreateAdminPhotographs < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_photographs do |t|
      t.string :caption

      t.timestamps
    end
  end
end
