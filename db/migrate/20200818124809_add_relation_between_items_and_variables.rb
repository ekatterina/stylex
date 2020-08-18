class AddRelationBetweenItemsAndVariables < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :variable, foreign_key: true
  end
end
