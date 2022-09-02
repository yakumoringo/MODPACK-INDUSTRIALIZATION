#loader contenttweaker
#priority 1000
/**
脚本作者：5huxiaoyang6
创建时间：2022年9月2日
*/
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.BracketHandlers;
import mods.contenttweaker.BracketHandlers;
import mods.contenttweaker.item.ItemBuilder;

var tab_general = "industrialization_general";

ItemGroup.create(tab_general, () => <item:minecraft:dragon_egg>);
//新建物品组
new ItemBuilder()
    .withItemGroup(<itemGroup:${tab_general}>)
    .build("item_fibber");


