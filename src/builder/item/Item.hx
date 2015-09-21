package builder.item;
import builder.packing.Packing;
interface Item
{
    function name():String;
    function packing():Packing;
    function price():Float;
}
