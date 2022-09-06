#loader contenttweaker
#priority 900
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.advance.ItemBuilderAdvanced;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.advance.BlockBuilderAdvanced;

for mpi in InterfaceMPIList.MPILIST{
    for part in InterfacePartList.PARTLIST{
        var regname = mpi.MATERIAL + "_" + part;
        new ItemBuilder()
            .withItemGroup(<itemGroup:${mpi.TAB}>)
            .withType<ItemBuilderAdvanced>()
            .build(regname);
    }
}