package factory;
/**
* FactoryProducer
*
* @author Midori Kocak github.com/mtkocak
* @package factory
**/
class FactoryProducer
{
    public static function getFactory(choice:String):AbstractFactory
    {
        if (choice.toUpperCase() == "COLOR")
        {
            return new AbstractColorFactory();
        }
        else if (choice.toUpperCase() == "SHAPE")
        {
            return new AbstractShapeFactory();
        }
        return null;
    }
    /**
    * Class Constructor
    * @return void
    **/

    public function new()
    {
    }
}
