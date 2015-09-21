package builder.item;
/**
* ChickenBurger
*
* @author Midori Kocak github.com/mtkocak
* @package builder.item
**/
import builder.packing.Wrapper;
import builder.packing.Packing;
class ChickenBurger implements Item
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
        return "Chikcen Burger";
    }

    public function price():Float
    {
        return 50.5;
    }
}
