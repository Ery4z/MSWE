from NBT.nbt.world import WorldFolder
import random, time

t_s = time.time()

folder1 = "/home/thomas/Python/MWE/map/Under_Olympus"


world1 = WorldFolder(folder1)

c_x = 0
c_z = 0
print(f"Region x={c_x // 32}, z={c_z // 32}")
entities1 = world1.get_entities(c_x // 32, c_z // 32)


region1 = world1.get_region(c_x // 32, c_z // 32)

for m in region1.get_metadata():
    chunk = region1.get_chunk(m.x, m.z)
    try:
        entities = entities1.get_chunk_entity(m.x, m.z)
    except Exception:
        pass
    else:
        print(f"Entities found x={m.x}, z={m.z}")

    # do stuff with the chunk
    # if random.random() > 0.5:


print(time.time() - t_s)
