#loader contenttweaker
#priority 2000
/*
TYPES OF TOOLS
- <tooltype:cut>
- <tooltype:hammer>
- <tooltype:pickaxe>
- <tooltype:shovel>
- <tooltype:reinforced_hammer>
- <tooltype:farmersdelight_knife>
- <tooltype:axe>
- <tooltype:wrench>
- <tooltype:sword>
- <tooltype:crook>
- <tooltype:shears>
- <tooltype:pry>
- <tooltype:paxel>
- <tooltype:hoe>
*/
import crafttweaker.api.data.StringData;


public class MaterialTool{
    /*
    通过在string的三维数组中添加二维数组来添加工具的材料，具体的参数看下面第一个材料pebble的格式
    */
    public static var MaterialToolList as string[][][] = [[
        ["pebble"],//工具前缀（名称） 0 
        ["32"],//耐久值 1 cast int
        ["0.5"],//附加的攻击力 2 cast float
        ["0.50"],//Additional ATK SPD 3 cast double
        ["1"],//Duration cost when ATK 4 cast int
        ["1"],//Duration cost when Mining 5 cast int
        ["axe","shovel","hammer"],//Types of Tool that applies 6 cast IToolType
        ["1"],//Mining Level 7 cast int
        ["1.0"]//Mining SPD 8 cast float
    ],
    [
        ["pebble_sharp"],//工具前缀（名称） 0 
        ["32"],//耐久值 1 cast int
        ["0.5"],//附加的攻击力 2 cast float
        ["0.50"],//Additional ATK SPD 3 cast double
        ["1"],//Duration cost when ATK 4 cast int
        ["1"],//Duration cost when Mining 5 cast int
        ["chisel","plane"],//Types of Tool that applies 6 cast IToolType
        ["1"],//Mining Level 7 cast int
        ["1.0"]//Mining SPD 8 cast float
    ]





];
}