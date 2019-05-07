class CreateAuthor < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :photo, default: "https://i.stack.imgur.com/l60Hf.png"
      t.timestamps
    end
  end
end
