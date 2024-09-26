#loader contenttweaker crafttweaker
#priority 2100

public class MaterialPartItem{
    //内置属性
    public var MATERIAL as string;
    public var HEXCOLOR as int;
    public var TAB as string = CreativeTabs.TAB_PARTS;


    //setter 有PUBLIC的才可以被外部访问
    private set Color as int{
        this.HEXCOLOR = $;
    }
    private set Material as string{
        this.MATERIAL = $;
    }

    //getter
    public get Color as int{
        return this.HEXCOLOR;
    }
    public get Matrial as string{
        return this.MATERIAL;
    }
    public get Tab as string{
        return this.TAB;
    }
    //方法

    //构造函数
    public this(m as string,c as int){
        this.MATERIAL = m;
        this.HEXCOLOR = c;
    }
}

