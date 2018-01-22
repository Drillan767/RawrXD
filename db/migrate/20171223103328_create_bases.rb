class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.string :facebook
      t.string :twitter
      t.string :github
      t.string :viadeo
      t.string :linkedin
      t.boolean :resume
      t.string :base_title
      t.timestamps
    end
  end
end
