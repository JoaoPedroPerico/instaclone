class LikeComments < ActiveRecord::Migration[7.0]
  def change
    change_table :likes do |t|
      table.remove :post_id
      t.references :likeable, polymorphic: true, null: false
    end
  end
end
