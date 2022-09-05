#loader contenttweaker crafttweaker
#priority 2000

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.data.StringData;
import mods.contenttweaker.BracketHandlers;
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.BracketHandlers;

public class MaterialPartItem{
    //内置属性
    public var MATERIAL as string;
    public var HEXCOLOR as int;
    public var TAB as string = CreativeTabs.TAB_PARTS;

    public var PARTLIST as string[] = InterfacePartList.PARTLIST;
    public var TAGLIST as string[] = InterfacePartList.PARTLIST;


    //setter 有PUBLIC的才可以被外部访问
    public setColor(c as int) as void{
        this.HEXCOLOR = c;
    }
    public setMaterial(m as string)as void{
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
    public buildMaterialPartItem() as void {
        for i in this.PARTLIST{
            var regname = this.MATERIAL + "_" + i;
        
            new ItemBuilder()
                .withItemGroup(<itemGroup:${this.TAB}>)
                .withType<ItemBuilderAdvanced>()
                .build(regname);
            <advanceditem:${regname}>.setItemColorSupplier((a,b)=>{
                return this.HEXCOLOR;
            });
        }
    }
    public addTags() as void{
        //根据部件类型列表添加tag标签
        for i in this.TAGLIST{
            var regname = this.MATERIAL + "_" + i;
            <tag:items:forge:${i}/${this.MATERIAL}>.add(<item:contenttweaker:${regname}>);
        }
    }

    public build() as void{
        this.buildMaterialPartItem();
        this.addTags();
    }


    //构造函数
    public this(MATERIAL as string,c as int){
        this.setMaterial(MATERIAL);
        this.setColor(c);
    }
}

