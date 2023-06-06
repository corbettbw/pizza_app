module PizzasHelper
    def checking_toppings(pizza, topping)
        if pizza.toppings == nil || !JSON.parse(pizza.toppings).include?(topping.name)
            return false
        elsif JSON.parse(pizza.toppings).include?(topping.name)
            return true
        end
    end
end
