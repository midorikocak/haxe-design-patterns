package singleton;
/**
* SingleObject
*
* @author Midori Kocak github.com/mtkocak
* @package singleton
**/
class SingleObject
{
    private static var instance:SingleObject = new SingleObject();
    /**
    * Class Constructor
    * @return void
    **/

    private function new()
    {
    }

    public static function getInstance():SingleObject
    {
        return instance;
    }

    public function showMessage():String{
        return "Hello World!";
    }
}
