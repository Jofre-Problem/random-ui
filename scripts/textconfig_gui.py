"""
TextConfig Studio - Native Windows .exe Program
Lightweight GUI for live-editing text files and Valve HUD .res / settings.data
Supports custom TTF fonts, live file saving, and dropdown value swapping
"""
import tkinter as tk
from tkinter import ttk, filedialog, messagebox
import re
import os

class TextConfigApp:
    def __init__(self, root):
        self.root = root
        self.root.title("4plug Hud Settings - Windows Edition")
        self.root.geometry("980x620")
        self.root.configure(bg="#1E1E1E")

        self.current_file_path = None
        self.file_content = ""
        self.options = [
            {"label": "Menu Style", "key": "Menu Style", "choices": ["2025", "Classic", "Minimal"], "val": "2025"},
            {"label": "Console Text", "key": "Console Text", "choices": ["WindowsXP", "Null", "Catamaran"], "val": "WindowsXP"},
            {"label": "UI Sound Effects", "key": "UI Sound Effects", "choices": ["MagnumHUD", "Half-Life", "VCR-Hud"], "val": "MagnumHUD"},
            {"label": "Sound Manifest", "key": "Sound Manifest", "choices": ["Null", "Default", "No Taunts"], "val": "Null"},
            {"label": "ANIMATIONS Show Health Ammo", "key": "ANIMATIONS Show Health Ammo on Spec", "choices": ["ON", "OFF"], "val": "ON"},
            {"label": "Player Health Visible", "key": "visible", "choices": ["Enabled", "Disabled"], "val": "Enabled"},
            {"label": "Health Counter Enabled", "key": "enabled", "choices": ["Enabled", "Disabled"], "val": "Enabled"},
            {"label": "Crosshair Hud Type", "key": "Crosshair Hud Type", "choices": ["Null", "Circle", "Cross"], "val": "Null"},
        ]

        self.build_ui()

    def build_ui(self):
        # Header Toolbar
        bar = tk.Frame(self.root, bg="#4a154b", height=36)
        bar.pack(fill="x", side="top")
        lbl = tk.Label(bar, text="4plug Hud Settings", bg="#4a154b", fg="white", font=("Segoe UI", 10, "bold"))
        lbl.pack(side="left", padx=12, pady=6)

        btn_open = tk.Button(bar, text="Open File (.txt/.res/.data)", bg="#7A5EF8", fg="white", relief="flat", command=self.open_file)
        btn_open.pack(side="right", padx=6, pady=4)

        btn_save = tk.Button(bar, text="Save (Ctrl+S)", bg="#22c55e", fg="white", relief="flat", command=self.save_file)
        btn_save.pack(side="right", padx=6, pady=4)

        # Options Grid
        grid_frame = tk.Frame(self.root, bg="#1E1E1E", padx=16, pady=16)
        grid_frame.pack(fill="both", expand=True)

        self.combos = {}
        for i, opt in enumerate(self.options):
            r, c = divmod(i, 4)
            card = tk.Frame(grid_frame, bg="#4099f0", padx=8, pady=8, highlightbackground="#3587d6", highlightthickness=1)
            card.grid(row=r, column=c, padx=6, pady=6, sticky="nsew")

            l = tk.Label(card, text=opt["label"], bg="#4099f0", fg="#4a154b", font=("Segoe UI", 9, "bold"))
            l.pack(anchor="w")

            combo = ttk.Combobox(card, values=opt["choices"], state="readonly")
            combo.set(opt["val"])
            combo.bind("<<ComboboxSelected>>", lambda e, o=opt: self.on_change(o, e.widget.get()))
            combo.pack(fill="x", pady=4)
            self.combos[opt["key"]] = combo

        for col in range(4):
            grid_frame.columnconfigure(col, weight=1)

        # Bottom Diff / Status
        self.status = tk.Label(self.root, text="Open your settings.data or .res file to live-edit", bg="#141414", fg="#a3a3a3", font=("Consolas", 9), anchor="w")
        self.status.pack(fill="x", side="bottom", padx=10, pady=4)

    def on_change(self, opt, new_val):
        opt["val"] = new_val
        val_to_write = "1" if new_val in ["Enabled", "ON"] else ("0" if new_val in ["Disabled", "OFF"] else new_val)
        if self.file_content and self.current_file_path:
            # Replace in memory and auto-save
            pattern = re.compile(rf'([\t ]*["']?\b{re.escape(opt["key"])}\b["']?[\t ]+)(["']?)([^"\r\n]*)(["']?)', re.IGNORECASE)
            self.file_content = pattern.sub(rf'\g<1>"{val_to_write}"', self.file_content)
            self.save_file(silent=True)
            self.status.config(text=f"Live-saved '{opt['key']}' = '{val_to_write}' to {os.path.basename(self.current_file_path)}")

    def open_file(self):
        path = filedialog.askopenfilename(filetypes=[("Config Files", "*.txt *.res *.data *.cfg *.ini"), ("All Files", "*.*")])
        if path:
            self.current_file_path = path
            with open(path, "r", encoding="utf-8", errors="ignore") as f:
                self.file_content = f.read()
            self.status.config(text=f"Loaded: {path} (Live editing enabled)")

    def save_file(self, silent=False):
        if not self.current_file_path:
            self.current_file_path = filedialog.asksaveasfilename(defaultextension=".txt")
        if self.current_file_path and self.file_content:
            with open(self.current_file_path, "w", encoding="utf-8") as f:
                f.write(self.file_content)
            if not silent:
                messagebox.showinfo("Saved", f"File saved to {self.current_file_path}")

if __name__ == "__main__":
    root = tk.Tk()
    app = TextConfigApp(root)
    root.mainloop()
