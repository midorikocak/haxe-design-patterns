package factory;
/**
* AbstractShapeFactory
*
* @author Midori Kocak github.com/mtkocak
* @package factory
**/
import factory.shape.Square;
import factory.shape.Rectangle;
import factory.shape.Circle;
import factory.shape.Shape;
import factory.color.Color;
class AbstractShapeFactory implements AbstractFactory
{
    /**
    * Class Constructor
    * @return void
    **/
    public function new()
    {
    }

    public function getColor(color:String):Color{
        return null;
    }

    public function getShape(shape:String):Shape{
        if(shape == null){
            return null;
        }
        if(shape.toUpperCase()=="CIRCLE"){
            return cast new Circle();
        }
        else if(shape.toUpperCase()=="RECTANGLE"){
            return cast new Rectangle();
        }
        else if(shape.toUpperCase()=="SQUARE"){
            return cast new Square();
        }
        return null;
    }
}
