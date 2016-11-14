class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :slack
      t.string :wsu_id
      t.integer :buisness_unit_id

      t.timestamps
    end
  end
end
