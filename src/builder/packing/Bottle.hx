package builder.packing;
/**
* Bottle
*
* @author Midori Kocak github.com/mtkocak
* @package builder.packing
**/
class Bottle implements Packing
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function pack():String
    {
        return "Bottle";
    }
}
