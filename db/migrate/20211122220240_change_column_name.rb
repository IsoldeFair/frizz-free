class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :type, :ing_type
  end
end
