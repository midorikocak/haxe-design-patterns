package builder;
/**
* Meal
*
* @author Midori Kocak github.com/mtkocak
* @package builder
**/
import builder.item.Item;
class Meal
{
    private var items:List<Item> = new List<Item>();
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function addItem(item:Item){
        items.add(item);
    }

    public function getCost():Float{
        var cost:Float = 0.0;
        for(item in items){
            cost += item.price();
        }
        return cost;
    }

    public function showItems():String{
        var receipt:String ="";
        for(item in items){
            receipt += "Item: " + item.name();
            receipt += ", Packing: " + item.packing().pack();
            receipt += ", Price: " + item.price();
            receipt += "\n";
        }
        return receipt;
    }
}
