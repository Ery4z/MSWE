from NBT.nbt.world import WorldFolder
import random, time

t_s = time.time()


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
    P0 = (min(chunk_coord1[0], chunk_coord2[0]), min(chunk_coord1[1], chunk_coord2[1]))
    P1 = (max(chunk_coord1[0], chunk_coord2[0]), max(chunk_coord1[1], chunk_coord2[1]))

    for x in range(P0[0], P1[0] + 1):
        for z in range(P0[1], P1[1] + 1):
            chunk_list.append((x, z))

    return chunk_list


def list_chunk_region(coord1, coord2):
    chunk_coord1 = get_chunk_pos(coord1)
    chunk_coord2 = get_chunk_pos(coord2)

    chunk_list = []
    # TODO : Make this thing work for any points with the range (can only increase)
    P0 = (min(chunk_coord1[0], chunk_coord2[0]), min(chunk_coord1[1], chunk_coord2[1]))
    P1 = (max(chunk_coord1[0], chunk_coord2[0]), max(chunk_coord1[1], chunk_coord2[1]))

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

    chunk_list1 = list_chunk(coord1, coord2)
    chunk_list2 = list_chunk(coord3, coord4)

    map_list = [[chunk_list1[i], chunk_list2[i]] for i in range(len(chunk_list1))]

    dict_region = {}

    for coord_chunk_map in map_list:
        coord_region_end = get_region_pos(coord_chunk_map[1])
        coord_region_start = get_region_pos(coord_chunk_map[0])

        normalized_chunk_coord_start = normalize_chunk_coord(coord_chunk_map[0])
        normalized_chunk_coord_end = normalize_chunk_coord(coord_chunk_map[1])

        if not coord_region_end in dict_region:
            dict_region[coord_region_end] = {}

        dict_region[coord_region_end][normalized_chunk_coord_end].append(
            [coord_region_start, normalized_chunk_coord_start]
        )

    return dict_region


def copy_chunk_from_mapdict(map1, map2, map_dict):
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
            pass

    for end_region_key in necessary_region_coord_end:
        end_region[end_region_key] = world2.get_region(
            end_region_key[0], end_region_key[1]
        )
        try:
            end_region_entities[end_region_key] = world2.get_entities(
                end_region_key[0], end_region_key[1]
            )
        except:
            pass

    for region_end_key in map_dict:
        end_region_object = end_region[region_end_key]
        end_region_entities_object = end_region_entities[region_end_key]
        for local_end_chunk_key in map_dict[region_end_key]:
            local_map = map_dict[region_end_key][local_end_chunk_key]

            start_region_object = start_region[local_map[0]]
            try:
                start_region_entities_object = start_region_entities[local_map[0]]
            except:
                pass

            try:
                start_chunk = start_region_object.export_chunk(
                    local_map[1][0], local_map[1][1]
                )
                end_region_object.import_chunk(
                    local_end_chunk_key[0], local_end_chunk_key[1], start_chunk
                )
            except:
                pass

            else:
                try:
                    start_entities = start_region_entities_object.get_chunk_entity(
                        local_map[1][0], local_map[1][1]
                    )
                    end_region_entities_object.write_chunk_entities(
                        local_end_chunk_key[0], local_end_chunk_key[1], start_entities
                    )
                except Exception:
                    pass

        # do stuff with the chunk
        # if random.random() > 0.5:


print(time.time() - t_s)
