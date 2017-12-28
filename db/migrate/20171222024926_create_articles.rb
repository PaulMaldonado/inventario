class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :codigo
      t.text :description
      t.integer :cantidad

      t.timestamps
    end
  end
end
