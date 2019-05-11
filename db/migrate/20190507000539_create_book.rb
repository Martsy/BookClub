
class CreateBook < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.integer :year_published
      t.string :book_cover, default: "https://i.ebayimg.com/images/g/1vcAAOSwXuda~NiV/s-l300.jpg"
      t.timestamps
    end
  end
end
