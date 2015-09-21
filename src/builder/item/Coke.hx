package builder.item;
/**
* Coke
*
* @author Midori Kocak github.com/mtkocak
* @package builder.item
**/
import builder.packing.Bottle;
import builder.packing.Packing;
class Coke implements Item
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function packing():Packing
    {
        return new Bottle();
    }

    public function name():String
    {
        return "Coke";
    }

    public function price():Float
    {
        return 30.0;
    }
}
