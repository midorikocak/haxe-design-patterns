package factory.color;
/**
* Red
*
* @author Midori Kocak github.com/mtkocak
* @package factory.color
**/
class Red implements Color
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function fill():String{
        return "Inside Red::fill() method.";
    }
}
