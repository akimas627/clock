class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.datetime :go
      t.datetime :leav
      t.text :content

      t.timestamps
    end
  end
end
