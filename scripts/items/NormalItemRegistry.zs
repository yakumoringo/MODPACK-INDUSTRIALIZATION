#loader contenttweaker
#priority 900

import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.item.ItemBuilder;

public class NormalItemRegistry{
    //全局静态字段：输入 物品 的 名称 来注册。用于一般物品的注册
    public static var ItemList = [
        "fibber",
        "test_rod",
        "fibber_string",
        "carpenter_part",
        "carpenter_frame",
        "pebble_sharp",
        "resin"
    ];
}

for i in NormalItemRegistry.ItemList{
    new ItemBuilder()
        .withItemGroup(<itemGroup:${CreativeTabs.TAB_GENERAL}>)
        .build(i);
}




