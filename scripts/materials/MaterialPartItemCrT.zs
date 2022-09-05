#loader crafttweaker
#priority 2000
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;


public class MaterialPartItem{
    //内置属性
    var MATERIAL as string;
    var HEXCOLOR as int;
    var TAB as string = CreativeTabs.TAB_PARTS;

    var PARTLIST as string[] = InterfacePartList.PARTLIST;
    var TAGLIST as string[] = InterfacePartList.PARTLIST;


    //setter 有PUBLIC的才可以被外部访问
    setColor(c as int) as void{
        this.HEXCOLOR = c;
    }
    setMaterial(m as string)as void{
        this.MATERIAL = m;
    }

    //getter
    public getColor() as int{
        return this.HEXCOLOR;
    }
    public getMatrial() as string{
        return this.MATERIAL;
    }
    //方法
    buildColor() as void{
            for i in this.PARTLIST{
            var regname = this.MATERIAL + "_" + i;
            var tname = "t_" + i;
            <advanceditem:contenttweaker:${regname}>.setItemColorSupplier(
                (a,b)=>{
                    //a = <item:contenttweaker:${tname}>;
                    return this.HEXCOLOR;
                }
            );
        }
    }
    public build()as void {
        this.buildColor();
    }
    //构造函数
    public this(MATERIAL as string,color as int){
        this.setMaterial(MATERIAL);
        this.setColor(color);
    }
}



