class CreateLinkss < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :link
      t.string :title
      t.integer :point
    end
  end
end
