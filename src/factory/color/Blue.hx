package factory.color;
/**
* Blue
*
* @author Midori Kocak github.com/mtkocak
* @package factory.color
**/
class Blue implements Color
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function fill():String{
        return "Inside Blue::fill() method.";
    }
}
