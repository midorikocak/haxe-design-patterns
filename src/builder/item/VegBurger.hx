package builder.item;
/**
* VegBurger
*
* @author Midori Kocak github.com/mtkocak
* @package builder.item
**/
import builder.packing.Packing;
import builder.packing.Wrapper;
class VegBurger implements Item
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function packing():Packing{
        return new Wrapper();
    }

    public function name():String
    {
        return "Veg Burger";
    }

    public function price():Float
    {
        return 25.0;
    }
}
