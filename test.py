from NBT.nbt.world import WorldFolder
import random, time

t_s = time.time()

folder1 = "C:\\Users\\Thomas\\AppData\\Roaming\\.minecraft\\saves\\monde serveur ACG 1.17.1 ultimate save perso version"
folder2 = (
    "C:\\Users\\Thomas\\AppData\\Roaming\\.minecraft\\saves\\New World (1)"
)

world1 = WorldFolder(folder1)
world2 = WorldFolder(folder2)

c_x = -67
c_z = 62
print(f"Region x={c_x // 32}, z={c_z // 32}")
entities1 = world1.get_entities(c_x // 32, c_z // 32)
entities2 = world2.get_entities(1, 0)

region1 = world1.get_region(c_x // 32, c_z // 32)
region2 = world2.get_region(1, 0)

for m in region1.get_metadata():
    chunk = region1.export_chunk(m.x, m.z)
    try:
        entities = entities1.get_chunk_entities(m.x, m.z)
    except Exception as e:
        pass
    else:
        print(f"Entities found x={m.x}, z={m.z}")
        entities2.write_chunk_entities(m.x, m.z, entities)

    # do stuff with the chunk
    # if random.random() > 0.5:
    region2.import_chunk(m.x, m.z, chunk)


print(time.time() - t_s)
