#loader contenttweaker
#priority 900



import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;

var Gear = MaterialGear.MaterialGearList;
for i in Gear{
    var name = "gear_"+i[0];
    new ItemBuilder()
        .withItemGroup(<ItemGroup:${CreativeTabs.TAB_PARTS}>)
        .withType<ItemBuilderAdvanced>()
        .build(name);
}





