package ;
import builder.MealBuilder;
import builder.Meal;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

class BuilderPatternTest
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
    public function create_builder()
    {
        var mealBuilder = new  MealBuilder();
        var vegMeal:Meal = mealBuilder.prepareVegMeal();

        var vegMealReceipt:String = vegMeal.showItems();
        var vegMealCost:Float = vegMeal.getCost();
        Assert.areEqual(55, vegMealCost);
        Assert.areEqual("Item: Veg Burger, Packing: Wrapper, Price: 25
Item: Coke, Packing: Bottle, Price: 30
", vegMealReceipt);

        var nonVegMeal:Meal = mealBuilder.prepareNonVegMeal();
        var nonVegMealReceipt:String = nonVegMeal.showItems();
        var nonVegMealCost:Float = nonVegMeal.getCost();
        Assert.areEqual(85.5, nonVegMealCost);
        Assert.areEqual("Item: Chikcen Burger, Packing: Wrapper, Price: 50.5
Item: Pepsi, Packing: Bottle, Price: 35
", nonVegMealReceipt);
    }
}
