class AddDescriptionStringToPoints < ActiveRecord::Migration
  def change
  	add_column :points, :description, :text
  end
end
