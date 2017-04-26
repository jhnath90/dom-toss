class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.decimal :sales
      t.string :name

      t.timestamps
    end
  end
end
