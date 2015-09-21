package factory;
/**
* ShapeFactory
*
* @author Midori Kocak github.com/mtkocak
* @package factory
**/
import factory.shape.Shape;
import factory.shape.Square;
import factory.shape.Rectangle;
import factory.shape.Circle;
class ShapeFactory
{
    public function new(){

    }

    public function getShape(shapeType:String):Shape
    {
        if(shapeType == null){
            return null;
        }
        if(shapeType.toUpperCase()=="CIRCLE"){
            return cast new Circle();
        }
        else if(shapeType.toUpperCase()=="RECTANGLE"){
            return cast new Rectangle();
        }
        else if(shapeType.toUpperCase()=="SQUARE"){
            return cast new Square();
        }
        return null;
    }
}
