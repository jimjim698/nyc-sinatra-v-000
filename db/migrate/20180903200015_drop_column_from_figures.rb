class DropColumnFromFigures < ActiveRecord::Migration
  def change
    drop_column :figures, :title_id
  end
end
