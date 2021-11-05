from NBT.nbt.world import WorldFolder
import random, time


def get_chunk_pos(coord):
    c_x = coord[0] // 16
    c_z = coord[1] // 16
    return (c_x, c_z)


def get_region_pos(coord):
    c_x = coord[0] // 32
    c_z = coord[1] // 32
    return (c_x, c_z)


def normalize_chunk_coord(coord):
    c_x = coord[0] % 32
    c_z = coord[1] % 32
    return (c_x, c_z)


def list_chunk(coord1, coord2):
    chunk_coord1 = get_chunk_pos(coord1)
    chunk_coord2 = get_chunk_pos(coord2)

    chunk_list = []
    # TODO : Make this thing work for any points with the range (can only increase)
    P0 = (
        min(chunk_coord1[0], chunk_coord2[0]),
        min(chunk_coord1[1], chunk_coord2[1]),
    )
    P1 = (
        max(chunk_coord1[0], chunk_coord2[0]),
        max(chunk_coord1[1], chunk_coord2[1]),
    )

    for x in range(P0[0], P1[0] + 1):
        for z in range(P0[1], P1[1] + 1):
            chunk_list.append((x, z))

    return chunk_list


def list_chunk_region(coord1, coord2):
    chunk_coord1 = get_chunk_pos(coord1)
    chunk_coord2 = get_chunk_pos(coord2)

    chunk_list = []
    # TODO : Make this thing work for any points with the range (can only increase)
    P0 = (
        min(chunk_coord1[0], chunk_coord2[0]),
        min(chunk_coord1[1], chunk_coord2[1]),
    )
    P1 = (
        max(chunk_coord1[0], chunk_coord2[0]),
        max(chunk_coord1[1], chunk_coord2[1]),
    )

    for x in range(P0[0], P1[0] + 1):
        for z in range(P0[1], P1[1] + 1):
            chunk_list.append((x, z))

    dict_region = {}
    for coord_chunk in chunk_list:
        coord_region = get_region_pos(coord_chunk)
        normalized_chunk_coord = normalize_chunk_coord(coord_chunk)
        if not coord_region in dict_region:
            dict_region[coord_region] = [normalized_chunk_coord]
        else:
            dict_region[coord_region].append(normalized_chunk_coord)

    return dict_region


coord1 = (-300, 200)
coord2 = (1500, -267)

coord3 = (2000, -3000)

chunk_list = list_chunk(coord1, coord2)


def map_chunks(coord1, coord2, coord3):
    """Return the map list of the chunk to copy region by region. Returns a dict as this:
    dict = {end_region_coord1:{end_region_chunk_coord_normalized1:[starting_region1,starting_region_chunk_coord_normalized1],...},...}

    Args:
        coord1 (tuple): First point of the copy
        coord2 (tuple): Second point of the copy
        coord3 (tuple): Paste point, image of the first one

    Returns:
        dict: See description
    """
    initial_vector = (coord2[0] - coord1[0], coord2[1] - coord1[1])

    coord4 = (coord3[0] + initial_vector[0], coord3[1] + initial_vector[1])

    ref_chunk1 = get_chunk_pos(coord1)
    ref_chunk2 = get_chunk_pos(coord3)

    chunk_list1 = list_chunk(coord1, coord2)
    chunk_list2 = list_chunk(coord3, coord4)

    map_list = []
    for chunk1 in chunk_list1:
        ref_vector1 = (chunk1[0] - ref_chunk1[0], chunk1[1] - ref_chunk1[1])
        for chunk2 in chunk_list2:
            ref_vector2 = (chunk2[0] - ref_chunk2[0], chunk2[1] - ref_chunk2[1])
            if ref_vector1 == ref_vector2:
                map_list.append([chunk1, chunk2])
                break

    dict_region = {}

    for coord_chunk_map in map_list:
        coord_region_end = get_region_pos(coord_chunk_map[1])
        coord_region_start = get_region_pos(coord_chunk_map[0])

        normalized_chunk_coord_start = normalize_chunk_coord(coord_chunk_map[0])
        normalized_chunk_coord_end = normalize_chunk_coord(coord_chunk_map[1])

        if not coord_region_end in dict_region:
            dict_region[coord_region_end] = {}

        dict_region[coord_region_end][normalized_chunk_coord_end] = [
            coord_region_start,
            normalized_chunk_coord_start,
        ]

    return dict_region


def copy_chunks(coord1, coord2, coord3, map1, map2):
    map_dict = map_chunks(coord1, coord2, coord3)
    copy_chunk_from_mapdict(map1, map2, map_dict)


def copy_chunk_from_mapdict(map1, map2, map_dict):
    t_s = time.time()
    world1 = WorldFolder(map1)
    if map1 == map2:
        world2 = world1
    else:
        world2 = WorldFolder(map2)

    necessary_region_coord_end = []
    necessary_region_coord_start = []
    for end_region_key in map_dict:
        necessary_region_coord_end.append(end_region_key)
        for local_chunk in map_dict[end_region_key]:
            if (
                map_dict[end_region_key][local_chunk][0]
                not in necessary_region_coord_start
            ):
                necessary_region_coord_start.append(
                    map_dict[end_region_key][local_chunk][0]
                )
    start_region = {}
    start_region_entities = {}
    end_region = {}
    end_region_entities = {}

    for start_region_key in necessary_region_coord_start:
        start_region[start_region_key] = world1.get_region(
            start_region_key[0], start_region_key[1]
        )
        try:
            start_region_entities[start_region_key] = world1.get_entities(
                start_region_key[0], start_region_key[1]
            )
        except:
            print(
                f"ENTITY | Unable to open world 1 r.{start_region_key[0]}.{start_region_key[1]}"
            )

    for end_region_key in necessary_region_coord_end:
        end_region[end_region_key] = world2.get_region(
            end_region_key[0], end_region_key[1]
        )
        try:
            end_region_entities[end_region_key] = world2.get_entities(
                end_region_key[0], end_region_key[1]
            )
        except:
            print(
                f"ENTITY | Unable to open world 2 r.{end_region_key[0]}.{end_region_key[1]}"
            )

    for region_end_key in map_dict:
        end_region_object = end_region[region_end_key]
        end_region_entities_object = end_region_entities[region_end_key]
        for local_end_chunk_key in map_dict[region_end_key]:
            local_map = map_dict[region_end_key][local_end_chunk_key]

            start_region_object = start_region[local_map[0]]
            try:
                start_region_entities_object = start_region_entities[local_map[0]]
            except:
                print(f"ENTITY | Unable to open region {local_map[0]} of map 2")

            try:
                start_chunk = start_region_object.export_chunk(
                    local_map[1][0], local_map[1][1]
                )
                end_region_object.import_chunk(
                    local_end_chunk_key[0], local_end_chunk_key[1], start_chunk
                )
            except:
                print(
                    f"BLOCS | Error while exporting {local_map[1][0], local_map[1][1]}"
                )

            else:
                try:
                    start_entities = start_region_entities_object.get_chunk_entities(
                        local_map[1][0], local_map[1][1]
                    )
                except Exception as e:
                    print(f"ENTITY | Error while loading entity {local_map[1]} : {e}")
                else:
                    try:
                        end_region_entities_object.write_chunk_entities(
                            local_end_chunk_key[0],
                            local_end_chunk_key[1],
                            start_entities,
                        )
                    except Exception:
                        print(
                            f"ENTITY | Error while writing entity {local_end_chunk_key}"
                        )
    print(time.time() - t_s)

    # do stuff with the chunk
    # if random.random() > 0.5:


if __name__ == "__main__":

    map1 = "C:\\Users\\Thomas\\AppData\\Roaming\\.minecraft\\saves\\New World (1)"
    map2 = map1

    coord1 = (598, 500)
    coord2 = (637, 418)
    coord3 = (777, 375)

    map_dict = map_chunks(coord1, coord2, coord3)

    copy_chunk_from_mapdict(map1, map2, map_dict)
