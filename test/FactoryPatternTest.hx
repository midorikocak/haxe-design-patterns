package ;
import factory.ShapeFactory;
import factory.shape.Shape;
import haxe.Timer;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;


class FactoryPatternTest
{

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

	}

	@After
	public function tearDown():Void
	{
	}

	@Test
	public function create_factory()
	{
		var shapeFactory:ShapeFactory = new ShapeFactory();
		var shape1:Shape = shapeFactory.getShape("CIRCLE");
		Assert.areEqual(shape1.draw(), "Inside Circle::draw() method.");

		var shape2:Shape = shapeFactory.getShape("RECTANGLE");
		Assert.areEqual(shape2.draw(), "Inside Rectangle::draw() method.");

		var shape3:Shape = shapeFactory.getShape("SQUARE");
		Assert.areEqual(shape3.draw(), "Inside Square::draw() method.");
	}
}
