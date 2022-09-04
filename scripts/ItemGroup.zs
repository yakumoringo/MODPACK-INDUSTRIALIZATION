#loader contenttweaker
#priority 1000


import mods.contenttweaker.functions.IIconSupplier;
import crafttweaker.api.item.ItemGroup;




public class CreativeTabs{
    public static var TAB_GENERAL = "industrialization_general";
    public static var TAB_TOOLS = "industrialization_tools";
    public static var TAB_PARTS = "industrialization_parts";
}

ItemGroup.create(CreativeTabs.TAB_GENERAL,()=><item:minecraft:apple>);
ItemGroup.create(CreativeTabs.TAB_TOOLS,()=><item:minecraft:apple>);
ItemGroup.create(CreativeTabs.TAB_PARTS,()=><item:minecraft:apple>);
