#loader crafttweaker
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.advance.BlockBuilderAdvanced;
import mods.contenttweaker.functions.IItemColorSupplier;
import crafttweaker.api.item.IItemStack;

for mpi in InterfaceMPIList.MPILIST{
    for part in InterfacePartList.PARTLIST{
        var regname = mpi.MATERIAL + "_" + part;
        var tname = "t_"+ part;
        <advanceditem:${regname}>.setItemColorSupplier(
            (a,b)=>{
                return mpi.HEXCOLOR;
            }
        );}
}