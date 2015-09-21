package factory;
import factory.shape.Shape;
import factory.color.Color;
interface AbstractFactory
{
    function getColor(color:String):Color;
    function getShape(shape:String):Shape;
}
