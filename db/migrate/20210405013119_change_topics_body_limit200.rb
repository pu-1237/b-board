class ChangeTopicsBodyLimit200 < ActiveRecord::Migration[6.1]
  def up
    change_column :topics, :title, :string, limit: 30
    change_column :topics, :body, :text, limit:200
  end
  def down
    change_column :topics, :titlem, :string
    change_column :topics, :body, :text
  end
end
