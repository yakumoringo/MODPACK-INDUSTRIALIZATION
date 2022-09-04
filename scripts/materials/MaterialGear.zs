#loader contenttweaker
#priority 2000

public class MaterialGear{
    //齿轮的注册：["材料名称","颜色代码"]
    public static var MaterialGearList  = [
        ["copper","0x66ccff"]
    ] as string[][];
}

//复制一份上面的内容
#loader crafttweaker
public class MaterialGear{
    //齿轮的注册：["材料名称","颜色代码"]
    public static var MaterialGearList  = [
        []
    ] as string[][];
}