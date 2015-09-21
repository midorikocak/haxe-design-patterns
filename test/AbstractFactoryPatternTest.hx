package ;
import factory.color.Color;
import factory.FactoryProducer;
import factory.AbstractFactory;
import haxe.Timer;
import factory.ShapeFactory;
import factory.shape.Shape;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

class AbstractFactoryPatternTest
{

    var shapeFactory:AbstractFactory;
    var colorFactory:AbstractFactory;

    public function new()
    {

    }

    @BeforeClass
    public function beforeClass():Void
    {
    }

    @AfterClass
    public function afterClass():Void
    {
    }

    @Before
    public function setup():Void
    {
        shapeFactory = FactoryProducer.getFactory('SHAPE');
        colorFactory = FactoryProducer.getFactory('COLOR');
    }

    @After
    public function tearDown():Void
    {
    }

    @Test
    public function create_circle()
    {
        var shape1:Shape = shapeFactory.getShape("CIRCLE");
        Assert.areEqual(shape1.draw(), "Inside Circle::draw() method.");
    }

    @Test
    public function create_rectangle()
    {
        var shape2:Shape = shapeFactory.getShape("RECTANGLE");
        Assert.areEqual(shape2.draw(), "Inside Rectangle::draw() method.");
    }

    @Test
    public function create_square()
    {
        var shape3:Shape = shapeFactory.getShape("SQUARE");
        Assert.areEqual(shape3.draw(), "Inside Square::draw() method.");

    }

    @Test
    public function create_red()
    {
        var color1:Color = colorFactory.getColor("RED");
        Assert.areEqual(color1.fill(), "Inside Red::fill() method.");
    }


    @Test
    public function create_green()
    {
        var color2:Color = colorFactory.getColor("GREEN");
        Assert.areEqual(color2.fill(), "Inside Green::fill() method.");
    }


    @Test
    public function create_blue()
    {

        var color3:Color = colorFactory.getColor("BLUE");
        Assert.areEqual(color3.fill(), "Inside Blue::fill() method.");
    }
}
