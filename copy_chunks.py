import tkinter as tk
from utils import copy_chunks
from tkinter import filedialog as fd
from sys import platform


world1 = "Not choosen"
world2 = "Not choosen"
if platform == "win32":
    initial_dir = r"%appdata%\\.minecraft\\saves"
else:
    initial_dir = "/"
worlds = [world1, world2]


def browseFiles1():
    worlds[0] = fd.askdirectory(
        initialdir=initial_dir, title="Select a Directory"
    )
    label_world_1.config(state=tk.NORMAL)
    label_world_1.insert(0, worlds[0])
    label_world_1.config(state=tk.DISABLED)


def browseFiles2():
    worlds[1] = fd.askdirectory(
        initialdir=initial_dir, title="Select a Directory"
    )
    label_world_2.config(state=tk.NORMAL)
    label_world_2.insert(0, worlds[1])
    label_world_2.config(state=tk.DISABLED)


window = tk.Tk()
window.title("World copy")
# window.geometry("350x200")
lbl = tk.Label(window, text="Please enter points and choose world file")
lbl.grid(column=0, columnspan=3, row=0)

txt_cp_1 = tk.Label(window, text="Copy point 1")
txt_cp_1.grid(column=0, row=1)
cp_p_1_x = tk.Entry(window, width=10)
cp_p_1_x.insert(tk.END, "x")
cp_p_1_x.grid(column=1, row=1)
cp_p_1_z = tk.Entry(window, width=10)
cp_p_1_z.insert(tk.END, "z")
cp_p_1_z.grid(column=2, row=1)

txt_cp_2 = tk.Label(window, text="Copy point 2")
txt_cp_2.grid(column=0, row=2)
cp_p_2_x = tk.Entry(window, width=10)
cp_p_2_x.insert(tk.END, "x")
cp_p_2_x.grid(column=1, row=2)
cp_p_2_z = tk.Entry(window, width=10)
cp_p_2_z.insert(tk.END, "z")
cp_p_2_z.grid(column=2, row=2)

txt_cp_3 = tk.Label(window, text="Past point")
txt_cp_3.grid(column=0, row=3)
cp_p_3_x = tk.Entry(window, width=10)
cp_p_3_x.insert(tk.END, "x")
cp_p_3_x.grid(column=1, row=3)
cp_p_3_z = tk.Entry(window, width=10)
cp_p_3_z.insert(tk.END, "z")
cp_p_3_z.grid(column=2, row=3)


def clicked():
    label_status.config(state=tk.NORMAL)
    label_status.delete(0, "end")
    label_status.insert(0, "Starting ...")
    label_status.config(state=tk.DISABLED)
    print(world1, world2)
    try:
        coord1 = (int(cp_p_1_x.get()), int(cp_p_1_z.get()))
        coord2 = (int(cp_p_2_x.get()), int(cp_p_2_z.get()))
        coord3 = (int(cp_p_3_x.get()), int(cp_p_3_z.get()))
    except:
        label_status.config(state=tk.NORMAL)
        label_status.delete(0, "end")
        label_status.insert(0, "Please enter only integers")
        label_status.config(state=tk.DISABLED)
    else:

        if worlds[0] == "Not choosen" or worlds[1] == "Not choosen":
            label_status.config(state=tk.NORMAL)
            label_status.delete(0, "end")
            label_status.insert(0, "Please choose two worlds")
            label_status.config(state=tk.DISABLED)
        try:
            copy_chunks(
                coord1,
                coord2,
                coord3,
                worlds[0].replace("/", "\\"),
                worlds[1].replace("/", "\\"),
            )
        except:
            label_status.config(state=tk.NORMAL)
            label_status.delete(0, "end")
            label_status.insert(0, "An error occurred")
            label_status.config(state=tk.DISABLED)

        else:
            label_status.config(state=tk.NORMAL)
            label_status.delete(0, "end")
            label_status.insert(0, "Success")
            label_status.config(state=tk.DISABLED)


btn = tk.Button(window, text="Copy and Paste", command=clicked)
btn.grid(column=3, row=1)
label_status = tk.Entry(window, width=30)
label_status.insert(0, "")
label_status.config(state=tk.DISABLED)
label_status.grid(column=4, row=1)


button_explore1 = tk.Button(window, text="Select world 1", command=browseFiles1)
button_explore1.grid(column=0, row=4)

label_world_1 = tk.Entry(window, width=30)
label_world_1.insert(0, world1)
label_world_1.config(state=tk.DISABLED)
label_world_1.grid(column=1, columnspan=3, row=4)

button_explore2 = tk.Button(window, text="Select world 2", command=browseFiles2)
button_explore2.grid(column=0, row=5)

label_world_2 = tk.Entry(window, width=30)
label_world_2.insert(0, world2)
label_world_2.config(state=tk.DISABLED)
label_world_2.grid(column=1, columnspan=3, row=5)
window.mainloop()
