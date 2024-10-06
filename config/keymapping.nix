{
  globals.mapleader = " "; # set leader to space
  keymaps = [
    { mode = ["n"]; key = "<leader>w"; action = ":set wrap<CR>";}
    { mode = ["n"]; key = "<leader>nw"; action = ":set nowrap<CR>";}

    { mode = ["n"]; key = "<leader>h"; action = "<c-w>h"; }
    { mode = ["n"]; key = "<leader>j"; action = "<c-w>j"; }
    { mode = ["n"]; key = "<leader>k"; action = "<c-w>k"; }
    { mode = ["n"]; key = "<leader>l"; action = "<c-w>l"; }

    # tabs
    { mode = ["n"]; key = "<leader>tn"; action = ":tabnew<CR>";}
    { mode = ["n"]; key = "<leader>tj"; action = ":tabnext-<CR>";}
    { mode = ["n"]; key = "<leader>tk"; action = ":tabnext+<CR>";}
    { mode = ["n"]; key = "<leader>tc"; action = ":tabclose";}

    { mode = ["n"]; key = "<leader>sh"; action = "<c-w>s"; }
    { mode = ["n"]; key = "<leader>sv"; action = "<c-w>v"; }
    { mode = ["n"]; key = "<leader>nl"; action = ":nohl<CR>"; }

    { mode = ["v"]; key = "<"; action = "<gv"; }
    { mode = ["v"]; key = ">"; action = ">gv"; }
  ];
}
