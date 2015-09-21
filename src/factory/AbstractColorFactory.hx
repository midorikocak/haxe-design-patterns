package factory;
/**
* AbstractColorFactory
*
* @author Midori Kocak github.com/mtkocak
* @package factory
**/
import factory.color.Blue;
import factory.color.Green;
import factory.color.Red;
import factory.shape.Shape;
import factory.color.Color;
class AbstractColorFactory implements AbstractFactory
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function getColor(color:String):Color{
        if(color == null){
            return null;
        }
        if(color.toUpperCase()=="RED"){
            return cast new Red();
        }
        else if(color.toUpperCase()=="GREEN"){
            return cast new Green();
        }
        else if(color.toUpperCase()=="BLUE"){
            return cast new Blue();
        }
        return null;
    }

    public function getShape(shape:String):Shape{
        return null;
    }
}
