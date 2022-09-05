#loader crafttweaker
#priority 2000

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.INumberData;
import crafttweaker.api.data.StringData;
import mods.contenttweaker.BracketHandlers;
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.BracketHandlers;

public expand string{
    public implicit as IItemStack =>
        BracketHandlers.getItem(this);

    public implicit as int{
        return this as int;
    }

    public implicit as float{
        return (this as double) as float;
    }

    public implicit as double{
        return this as double;
    }
}