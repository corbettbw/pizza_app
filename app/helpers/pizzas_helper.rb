module PizzasHelper
    def checking_toppings(pizza, topping)
        if pizza.toppings == nil || !JSON.parse(pizza.toppings).include?(topping.name)
            return false
        elsif JSON.parse(pizza.toppings).include?(topping.name)
            return true
        end
    end

    def topping_expired(pizza)
        if pizza.toppings != nil
            toppingsArray = []
            JSON.parse(pizza.toppings).each do |topping|
                if Topping.all.collect(&:name).include?(topping) == false
                    toppingsArray.push topping
                end
            end
            toppingsArray.empty? ? (toppingsArray.push false):(toppingsArray.push true)
        end
    end
end
# conditions: pizza exists, has toppings, and one of the toppings doesn't exist
# include check box and topping in red with warning: uncheck if you want to remove this topping
