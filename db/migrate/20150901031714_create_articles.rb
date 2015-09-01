class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string   :title
      t.integer  :rank
      t.string   :link
      t.string   :comment_link
      t.integer  :num_comments
      t.string   :domain
      t.integer  :utc
      t.timestamps null: false
    end
  end
end
