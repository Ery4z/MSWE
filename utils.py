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
    for x in range(chunk_coord1[0], chunk_coord2[0] + 1):
        for z in range(chunk_coord1[1], chunk_coord2[1] - 1, -1):
            chunk_list.append((x, z))

    dict_region = {}
    for coord_chunk in chunk_list:
        coord_region = get_region_pos(coord_chunk)
        normalized_chunk_coord = normalize_chunk_coord(coord_chunk)
        if not coord_region in dict_region:
            dict_region[str(coord_region)] = [normalized_chunk_coord]
        else:
            dict_region[str(coord_region)].append(normalized_chunk_coord)

    return dict_region


coord1 = (-300, 200)
coord2 = (1500, -267)

print(list_chunk(coord1, coord2))
