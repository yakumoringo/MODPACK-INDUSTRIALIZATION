#loader crafttweaker

import mods.contenttweaker.item.advance.CoTItemAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;


var Color = MaterialGear.MaterialGearList;
for i in Color{
    var name = "gear_"+i[0];
    <advanceditem:${name}>
        .setItemColorSupplier((a,b)=>{
            return IItemColorSupplier.apply(a,i[1]);
        });
        
}





