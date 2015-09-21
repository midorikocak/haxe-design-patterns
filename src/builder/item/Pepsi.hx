package builder.item;
/**
* Pepsi
*
* @author Midori Kocak github.com/mtkocak
* @package builder.item
**/
import builder.packing.Bottle;
import builder.packing.Packing;
class Pepsi implements Item
    {
        /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function name():String
    {
    return "Pepsi";
    }

    public function packing():Packing{
        return new Bottle();
    }

    public function price():Float
    {
    return 35.0;
    }
    }
