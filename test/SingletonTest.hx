package ;
import singleton.SingleObject;
import haxe.Timer;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

class SingletonTest
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
    public function create_singleton()
    {
        var object:SingleObject = SingleObject.getInstance();
        Assert.areEqual("Hello World!", object.showMessage());
    }
}
