class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image
      t.boolean :public
      t.string :tags
      t.string :slug
      t.text :content
      t.timestamps
    end
  end
end
