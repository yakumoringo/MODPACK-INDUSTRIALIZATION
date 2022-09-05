#loader contenttweaker crafttweaker
#priority 2000

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;

public class Material{
    //内置属性
    var MATERIAL as string = "test";
    var HEXCOLOR as int = 0x66CCFF;
    var TAB as string = CreativeTabs.TAB_DEBUG;


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
    public build() as void {
        var regname = "material_"+this.MATERIAL;
        new ItemBuilder()
            .withItemGroup(<itemGroup:${this.TAB}>)
            .withType<ItemBuilderAdvanced>()
            .build(regname);
        <advanceditem:${regname}>.setItemColorSupplier((a,b)=>{
            return this.HEXCOLOR;
        });
    }


    //构造函数
    public this(MATERIAL as string,c as int){
        this.setMaterial(MATERIAL);
        this.setColor(c);
    }
}

