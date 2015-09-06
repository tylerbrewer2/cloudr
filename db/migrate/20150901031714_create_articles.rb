class CreateArticles < ActiveRecord::Migration
  def change
    create_table    :articles do |t|
      t.string      :title
      t.integer     :rank
      t.string      :link
      t.integer     :order_num
      t.integer     :category_id, index: true
      t.timestamps null: false
    end
  end
end
