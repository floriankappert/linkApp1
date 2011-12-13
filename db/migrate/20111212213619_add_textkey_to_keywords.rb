class AddTextkeyToKeywords < ActiveRecord::Migration
  def change
    add_column :keywords, :text, :string
    remove_column :keywords, :host
  end
end
