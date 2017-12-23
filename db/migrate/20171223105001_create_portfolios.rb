class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.datetime :creation_time
      t.boolean :public
      t.text :content
      t.string :tags
      t.json :illustrations
      t.string :thumbnail
      t.string :website
      t.timestamps
    end
  end
end
