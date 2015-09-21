package builder;
/**
* MealBuilder
*
* @author Midori Kocak github.com/mtkocak
* @package builder
**/
import builder.item.ChickenBurger;
import builder.item.Pepsi;
import builder.item.Coke;
import builder.item.VegBurger;
class MealBuilder
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function prepareVegMeal(){
        var meal:Meal = new Meal();
        meal.addItem(new VegBurger());
        meal.addItem(new Coke());
        return meal;
    }

    public function prepareNonVegMeal(){
        var meal:Meal = new Meal();
        meal.addItem(new ChickenBurger());
        meal.addItem(new Pepsi());
        return meal;
    }
}
