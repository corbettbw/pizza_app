class AddToppingsToPizza < ActiveRecord::Migration[7.0]
  def change
    add_column :pizzas, :toppings, :string, array: true, default: []
  end
end
