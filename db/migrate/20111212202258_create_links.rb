class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.references :customer
      t.references :domain
      t.references :keyword
      t.references :state

      t.timestamps
    end
    add_index :links, :customer_id
    add_index :links, :domain_id
    add_index :links, :keyword_id
    add_index :links, :state_id
  end
end
