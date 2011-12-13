class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :host
      t.references :customer

      t.timestamps
    end
    add_index :keywords, :customer_id
  end
end
