class ChangeTopicsTitleNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :topics, :title, false
  end
end
