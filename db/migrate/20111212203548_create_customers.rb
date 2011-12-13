class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.references :profile

      t.timestamps
    end
    add_index :customers, :profile_id
  end
end
