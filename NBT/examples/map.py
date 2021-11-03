#!/usr/bin/env python
"""
Prints a map of the entire world.
"""

import os, sys
import math
from struct import pack

# local module
try:
    import nbt
except ImportError:
    # nbt not in search path. Let's see if it can be found in the parent folder
    extrasearchpath = os.path.realpath(
        os.path.join(__file__, os.pardir, os.pardir)
    )
    if not os.path.exists(os.path.join(extrasearchpath, "nbt")):
        raise
    sys.path.append(extrasearchpath)
from nbt.region import RegionFile
from nbt.chunk import Chunk
from nbt.world import WorldFolder, McRegionWorldFolder

# PIL module (not build-in)
try:
    from PIL import Image
except ImportError:
    # PIL not in search path. Let's see if it can be found in the parent folder
    sys.stderr.write(
        "Module PIL/Image not found. Pillow (a PIL fork) can be found at http://python-imaging.github.io/\n"
    )
    # Note: it may also be possible that PIL is installed, but JPEG support is disabled or broken
    sys.exit(70)  # EX_SOFTWARE


def get_heightmap_image(chunk, buffer=False, gmin=False, gmax=False):
    points = chunk.blocks.generate_heightmap(buffer, True)
    # Normalize the points
    hmin = (
        min(points) if (gmin == False) else gmin
    )  # Allow setting the min/max explicitly, in case this is part of a bigger map
    hmax = max(points) if (gmax == False) else gmax
    hdelta = hmax - hmin + 0.0
    pixels = ""
    for y in range(16):
        for x in range(16):
            # pix X => mc -Z
            # pix Y => mc X
            offset = (15 - x) * 16 + y
            height = int((points[offset] - hmin) / hdelta * 255)
            if height < 0:
                height = 0
            if height > 255:
                height = 255
            pixels += pack(">B", height)
    im = Image.fromstring("L", (16, 16), pixels)
    return im


# List of blocks to ignore
# Uncomment all the lines to show underground structures
# TODO: move this list into a separate config file

block_ignore = [
    "minecraft:air",  # At least this one
    #    'cave_air', 'water', 'lava', 'snow', 'ice',
    #    'grass', 'tall_grass', 'dead_bush',
    #    'seagrass', 'tall_seagrass', 'kelp', 'kelp_plant',
    #    'dandelion', 'poppy', 'oxeye_daisy', 'white_tulip',
    #    'azure_bluet', 'lilac', 'rose_bush', 'peony', 'blue_orchid',
    #    'lily_pad', 'sugar_cane', 'vine', 'pumpkin', 'cactus',
    #    'wheat', 'potatoes', 'beetroots', 'carrots',
    #    'oak_leaves', 'dark_oak_leaves', 'birch_leaves',
    #    'acacia_leaves', 'spruce_leaves',
    #    'oak_log', 'dark_oak_log', 'birch_log',
    #    'acacia_log', 'spruce_log',
    #    'brown_mushroom', 'red_mushroom',
    #    'brown_mushroom_block', 'red_mushroom_block', 'mushroom_stem',
    #    'grass_block', 'grass_path', 'farmland', 'dirt',
    #    'stone', 'sand', 'gravel', 'clay',
    #    'sandstone', 'diorite', 'andesite', 'granite', 'obsidian',
    #    'coal_ore', 'iron_ore', 'gold_ore', 'diamond_ore',
    #    'redstone_ore', 'lapis_ore', 'emerald_ore',
    #    'cobweb',
]


# Map of block colors from names
# Legacy block numeric identifiers are now hidden by Block class
# and mapped to alpha identifiers in best effort
# TODO: move this map into a separate config file

block_colors = {
    "minecraft:acacia_leaves": {"h": 114, "s": 64, "l": 22},
    "minecraft:acacia_log": {"h": 35, "s": 93, "l": 30},
    "minecraft:air": {"h": 0, "s": 0, "l": 0},
    "minecraft:andesite": {"h": 0, "s": 0, "l": 32},
    "minecraft:azure_bluet": {"h": 0, "s": 0, "l": 100},
    "minecraft:bedrock": {"h": 0, "s": 0, "l": 10},
    "minecraft:birch_leaves": {"h": 114, "s": 64, "l": 22},
    "minecraft:birch_log": {"h": 35, "s": 93, "l": 30},
    "minecraft:blue_orchid": {"h": 0, "s": 0, "l": 100},
    "minecraft:bookshelf": {"h": 0, "s": 0, "l": 100},
    "minecraft:brown_mushroom": {"h": 0, "s": 0, "l": 100},
    "minecraft:brown_mushroom_block": {"h": 0, "s": 0, "l": 100},
    "minecraft:cactus": {"h": 126, "s": 61, "l": 20},
    "minecraft:cave_air": {"h": 0, "s": 0, "l": 0},
    "minecraft:chest": {"h": 0, "s": 100, "l": 50},
    "minecraft:clay": {"h": 7, "s": 62, "l": 23},
    "minecraft:coal_ore": {"h": 0, "s": 0, "l": 10},
    "minecraft:cobblestone": {"h": 0, "s": 0, "l": 25},
    "minecraft:cobblestone_wall": {"h": 0, "s": 0, "l": 25},
    "minecraft:cobblestone_stairs": {"h": 0, "s": 0, "l": 25},
    "minecraft:crafting_table": {"h": 0, "s": 0, "l": 100},
    "minecraft:dandelion": {"h": 60, "s": 100, "l": 60},
    "minecraft:dark_oak_leaves": {"h": 114, "s": 64, "l": 22},
    "minecraft:dark_oak_log": {"h": 35, "s": 93, "l": 30},
    "minecraft:dark_oak_planks": {"h": 35, "s": 93, "l": 30},
    "minecraft:dead_bush": {"h": 0, "s": 0, "l": 100},
    "minecraft:diorite": {"h": 0, "s": 0, "l": 32},
    "minecraft:dirt": {"h": 27, "s": 51, "l": 15},
    "minecraft:end_portal_frame": {"h": 0, "s": 100, "l": 50},
    "minecraft:farmland": {"h": 35, "s": 93, "l": 15},
    "minecraft:fire": {"h": 55, "s": 100, "l": 50},
    "minecraft:flowing_lava": {"h": 16, "s": 100, "l": 48},
    "minecraft:flowing_water": {"h": 228, "s": 50, "l": 23},
    "minecraft:glass_pane": {"h": 0, "s": 0, "l": 100},
    "minecraft:granite": {"h": 0, "s": 0, "l": 32},
    "minecraft:grass": {"h": 94, "s": 42, "l": 25},
    "minecraft:grass_block": {"h": 94, "s": 42, "l": 32},
    "minecraft:gravel": {"h": 21, "s": 18, "l": 20},
    "minecraft:ice": {"h": 240, "s": 10, "l": 95},
    "minecraft:infested_stone": {"h": 320, "s": 100, "l": 50},
    "minecraft:iron_ore": {"h": 22, "s": 65, "l": 61},
    "minecraft:iron_bars": {"h": 22, "s": 65, "l": 61},
    "minecraft:ladder": {"h": 35, "s": 93, "l": 30},
    "minecraft:lava": {"h": 16, "s": 100, "l": 48},
    "minecraft:lilac": {"h": 0, "s": 0, "l": 100},
    "minecraft:lily_pad": {"h": 114, "s": 64, "l": 18},
    "minecraft:lit_pumpkin": {"h": 24, "s": 100, "l": 45},
    "minecraft:mossy_cobblestone": {"h": 115, "s": 30, "l": 50},
    "minecraft:mushroom_stem": {"h": 0, "s": 0, "l": 100},
    "minecraft:oak_door": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_fence": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_fence_gate": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_leaves": {"h": 114, "s": 64, "l": 22},
    "minecraft:oak_log": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_planks": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_slab": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_pressure_plate": {"h": 35, "s": 93, "l": 30},
    "minecraft:oak_stairs": {"h": 114, "s": 64, "l": 22},
    "minecraft:peony": {"h": 0, "s": 0, "l": 100},
    "minecraft:pink_tulip": {"h": 0, "s": 0, "l": 0},
    "minecraft:poppy": {"h": 0, "s": 100, "l": 50},
    "minecraft:pumpkin": {"h": 24, "s": 100, "l": 45},
    "minecraft:rail": {"h": 33, "s": 81, "l": 50},
    "minecraft:red_mushroom": {"h": 0, "s": 50, "l": 20},
    "minecraft:red_mushroom_block": {"h": 0, "s": 50, "l": 20},
    "minecraft:rose_bush": {"h": 0, "s": 0, "l": 100},
    "minecraft:sugar_cane": {"h": 123, "s": 70, "l": 50},
    "minecraft:sand": {"h": 53, "s": 22, "l": 58},
    "minecraft:sandstone": {"h": 48, "s": 31, "l": 40},
    "minecraft:seagrass": {"h": 94, "s": 42, "l": 25},
    "minecraft:sign": {"h": 114, "s": 64, "l": 22},
    "minecraft:spruce_leaves": {"h": 114, "s": 64, "l": 22},
    "minecraft:spruce_log": {"h": 35, "s": 93, "l": 30},
    "minecraft:stone": {"h": 0, "s": 0, "l": 32},
    "minecraft:stone_slab": {"h": 0, "s": 0, "l": 32},
    "minecraft:tall_grass": {"h": 94, "s": 42, "l": 25},
    "minecraft:tall_seagrass": {"h": 94, "s": 42, "l": 25},
    "minecraft:torch": {"h": 60, "s": 100, "l": 50},
    "minecraft:snow": {"h": 240, "s": 10, "l": 85},
    "minecraft:spawner": {"h": 180, "s": 100, "l": 50},
    "minecraft:vine": {"h": 114, "s": 64, "l": 18},
    "minecraft:wall_torch": {"h": 60, "s": 100, "l": 50},
    "minecraft:water": {"h": 228, "s": 50, "l": 23},
    "minecraft:wheat": {"h": 123, "s": 60, "l": 50},
    "minecraft:white_wool": {"h": 0, "s": 0, "l": 100},
    "minecraft:white_tulip": {"h": 0, "s": 0, "l": 100},
    "minecraft:orange_tulip": {"h": 41, "s": 80, "l": 50},
    "minecraft:red_tulip": {"h": 3, "s": 80, "l": 50},
    "minecraft:cornflower": {"h": 50, "s": 80, "l": 50},
    "minecraft:oxeye_daisy": {"h": 25, "s": 80, "l": 50},
    "minecraft:grass_path": {"h": 47, "s": 42, "l": 33},
    "minecraft:stripped_oak_wood": {"h": 47, "s": 71, "l": 33},
    "minecraft:lily_of_the_valley": {"h": 0, "s": 0, "l": 100},
    "minecraft:yellow_wool": {"h": 59, "s": 94, "l": 61},
}

L_to_add = []


def get_map(chunk):
    # Show an image of the chunk from above
    pixels = b""

    for z in range(16):
        for x in range(16):
            # Find the highest block in this column
            max_height = chunk.get_max_height()
            ground_height = max_height
            tints = []
            for y in range(max_height, -1, -1):
                block_id = chunk.get_block(x, y, z)
                if block_id != None:

                    # block_data = 0  # TODO: use block properties
                    # if (block_id == 'water' or block_id == 'water'):
                    # tints.append({'h':228, 's':50, 'l':23}) # Water
                    # elif (block_id == 'leaves'):  # TODO: old id - update
                    # if (block_data == 1):
                    # tints.append({'h':114, 's':64, 'l':22}) # Redwood Leaves
                    # elif (block_data == 2):
                    # tints.append({'h':93, 's':39, 'l':10}) # Birch Leaves
                    # else:
                    # tints.append({'h':114, 's':64, 'l':22}) # Normal Leaves
                    # elif (block_id == 'ice'):
                    # tints.append({'h':240, 's':5, 'l':95}) # Ice
                    # elif (block_id == 'fire'):
                    # tints.append({'h':55, 's':100, 'l':50}) # Fire
                    # elif (block_id != 'air' or block_id != 'cave_air' or y == 0):
                    if block_id not in block_ignore or y == 0:
                        # Here is ground level
                        ground_height = y
                        break

            if block_id != None:
                if block_id in block_colors:
                    color = block_colors[block_id]
                else:
                    color = {"h": 0, "s": 0, "l": 100}
                    print("warning: unknown color for block id: %s" % block_id)
                    print(
                        f"hint: add that block to the 'block_colors' map | {repr(block_id)}"
                    )
                    if repr(block_id) not in L_to_add:
                        L_to_add.append(repr(block_id))
            else:
                color = {"h": 0, "s": 0, "l": 0}

            height_shift = 0  # (ground_height-64)*0.25

            final_color = {
                "h": color["h"],
                "s": color["s"],
                "l": color["l"] + height_shift,
            }
            if final_color["l"] > 100:
                final_color["l"] = 100
            if final_color["l"] < 0:
                final_color["l"] = 0

            # Apply tints from translucent blocks
            for tint in reversed(tints):
                final_color = hsl_slide(final_color, tint, 0.4)

            rgb = hsl2rgb(final_color["h"], final_color["s"], final_color["l"])

            pixels += pack("BBB", rgb[0], rgb[1], rgb[2])

    im = Image.frombytes("RGB", (16, 16), pixels)
    return im


## Color functions for map generation ##

# Hue given in degrees,
# saturation and lightness given either in range 0-1 or 0-100 and returned in kind
def hsl_slide(hsl1, hsl2, ratio):
    if abs(hsl2["h"] - hsl1["h"]) > 180:
        if hsl1["h"] > hsl2["h"]:
            hsl1["h"] -= 360
        else:
            hsl1["h"] += 360

    # Find location of two colors on the H/S color circle
    p1x = math.cos(math.radians(hsl1["h"])) * hsl1["s"]
    p1y = math.sin(math.radians(hsl1["h"])) * hsl1["s"]
    p2x = math.cos(math.radians(hsl2["h"])) * hsl2["s"]
    p2y = math.sin(math.radians(hsl2["h"])) * hsl2["s"]

    # Slide part of the way from tint to base color
    avg_x = p1x + ratio * (p2x - p1x)
    avg_y = p1y + ratio * (p2y - p1y)
    avg_h = math.atan(avg_y / avg_x)
    avg_s = avg_y / math.sin(avg_h)
    avg_l = hsl1["l"] + ratio * (hsl2["l"] - hsl1["l"])
    avg_h = math.degrees(avg_h)

    # print('tint: %s base: %s avg: %s %s %s' % (tint,final_color,avg_h,avg_s,avg_l))
    return {"h": avg_h, "s": avg_s, "l": avg_l}


# From http://www.easyrgb.com/index.php?X=MATH&H=19#text19
def hsl2rgb(H, S, L):
    H = H / 360.0
    S = S / 100.0  # Turn into a percentage
    L = L / 100.0
    if S == 0:
        return (int(L * 255), int(L * 255), int(L * 255))
    var_2 = L * (1 + S) if (L < 0.5) else (L + S) - (S * L)
    var_1 = 2 * L - var_2

    def hue2rgb(v1, v2, vH):
        if vH < 0:
            vH += 1
        if vH > 1:
            vH -= 1
        if (6 * vH) < 1:
            return v1 + (v2 - v1) * 6 * vH
        if (2 * vH) < 1:
            return v2
        if (3 * vH) < 2:
            return v1 + (v2 - v1) * (2 / 3.0 - vH) * 6
        return v1

    R = int(255 * hue2rgb(var_1, var_2, H + (1.0 / 3)))
    G = int(255 * hue2rgb(var_1, var_2, H))
    B = int(255 * hue2rgb(var_1, var_2, H - (1.0 / 3)))
    return (R, G, B)


def main(world_folder, show=True):
    world = WorldFolder(world_folder)
    bb = world.get_boundingbox()
    world_map = Image.new("RGB", (16 * bb.lenx(), 16 * bb.lenz()))
    t = world.chunk_count()
    try:
        i = 0.0
        for chunk in world.iter_chunks():
            if i % 50 == 0:
                sys.stdout.write("Rendering image")
            elif i % 2 == 0:
                sys.stdout.write(".")
                sys.stdout.flush()
            elif i % 50 == 49:
                sys.stdout.write("%5.1f%%\n" % (100 * i / t))
            i += 1
            chunkmap = get_map(chunk)
            x, z = chunk.get_coords()
            world_map.paste(chunkmap, (16 * (x - bb.minx), 16 * (z - bb.minz)))
        print(" done\n")
        filename = os.path.basename(world_folder) + ".png"
        world_map.save(filename, "PNG")
        print(L_to_add)
        print("Saved map as %s" % filename)
    except KeyboardInterrupt:
        print(" aborted\n")
        filename = os.path.basename(world_folder) + ".partial.png"
        world_map.save(filename, "PNG")
        print(L_to_add)
        print("Saved map as %s" % filename)
        return 75  # EX_TEMPFAIL
    if show:
        world_map.show()
    return 0  # NOERR


def tag_printer(tag, abscisse):
    string = " "* abscisse +"└------" + tag.name
    print(string)
    for sub_tag in tag.tags:
        tag_printer(sub_tag, abscisse+5)


if __name__ == "__main__":
    world_folder = (
        "C:\\Users\\Thomas\\AppData\\Roaming\\.minecraft\\saves\\Chinese Palace"
    )
    show = True
    """if len(sys.argv) == 1:
        print("No world folder specified!")
        sys.exit(64)  # EX_USAGE
    if sys.argv[1] == "--noshow" and len(sys.argv) > 2:
        show = False
        world_folder = sys.argv[2]
    else:
        show = True
        world_folder = sys.argv[1]"""
    # clean path name, eliminate trailing slashes. required for os.path.basename()
    world_folder = os.path.normpath(world_folder)
    if not os.path.exists(world_folder):
        print("No such folder as " + world_folder)
        sys.exit(72)  # EX_IOERR
    print(L_to_add)
    sys.exit(main(world_folder, show))
