import tkinter as tk
from utils import copy_chunks
from tkinter import filedialog as fd


def browseFiles():
    filename = fd.askdirectory(initialdir="/", title="Select a Directory")
    print(filename)


window = tk.Tk()
window.title("Welcome to LikeGeeks app")
window.geometry("350x200")
lbl = tk.Label(window, text="Hello")
lbl.grid(column=0, row=0)

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

txt_cp_3 = tk.Label(window, text="Copy point 3")
txt_cp_3.grid(column=0, row=3)
cp_p_3_x = tk.Entry(window, width=10)
cp_p_3_x.insert(tk.END, "x")
cp_p_3_x.grid(column=1, row=3)
cp_p_3_z = tk.Entry(window, width=10)
cp_p_3_z.insert(tk.END, "z")
cp_p_3_z.grid(column=2, row=3)


def clicked():
    lbl.configure(text="Button was clicked !!")


btn = tk.Button(window, text="Click Me", command=clicked)
btn.grid(column=3, row=1)

label_file_explorer = tk.Label(window, text="File Explorer using Tkinter")
label_file_explorer.grid(column=0, row=4)

button_explore1 = tk.Button(window, text="Browse Files", command=browseFiles)
button_explore1.grid(column=1, row=4)

button_explore2 = tk.Button(window, text="Browse Files", command=browseFiles)
button_explore2.grid(column=1, row=5)
window.mainloop()
