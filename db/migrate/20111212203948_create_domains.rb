class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :host
      t.references :customer

      t.timestamps
    end
    add_index :domains, :customer_id
  end
end
