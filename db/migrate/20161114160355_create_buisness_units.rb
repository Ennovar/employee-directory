class CreateBuisnessUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :buisness_units do |t|
      t.string :title

      t.timestamps
    end
  end
end
