#loader contenttweaker
#priority 2000

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.item.advance.CoTItemAdvanced;



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
    buildMaterialPartItem() as void {
        for i in this.PARTLIST{
            var regname = this.MATERIAL + "_" + i;
        
            new ItemBuilder()
                .withItemGroup(<itemGroup:${this.TAB}>)
                .withType<ItemBuilderAdvanced>()
                .build(regname);
        }
    }
    public build() as void{
        this.buildMaterialPartItem();
    }
    //构造函数
    public this(MATERIAL as string,c as int){
        this.setMaterial(MATERIAL);
        this.setColor(c);
    }
}



