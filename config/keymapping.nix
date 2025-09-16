{
  globals.mapleader = " "; # set leader to space
  keymaps = [
    { mode = ["n"]; key = "<leader>h"; action = "<c-w>h"; }
    { mode = ["n"]; key = "<leader>j"; action = "<c-w>j"; }
    { mode = ["n"]; key = "<leader>k"; action = "<c-w>k"; }
    { mode = ["n"]; key = "<leader>l"; action = "<c-w>l"; }

    { mode = ["n"]; key = "<leader>,"; action = "<c-w><"; }
    { mode = ["n"]; key = "<leader>-"; action = "<c-w>-"; }
    { mode = ["n"]; key = "<leader>="; action = "<c-w>+"; }
    { mode = ["n"]; key = "<leader>."; action = "<c-w>>"; }

    { mode = ["n"]; key = "<leader>sh"; action = "<c-w>s"; }
    { mode = ["n"]; key = "<leader>sv"; action = "<c-w>v"; }
    { mode = ["n"]; key = "<leader>nl"; action = ":nohl<CR>"; }

    { mode = ["v"]; key = "<"; action = "<gv"; }
    { mode = ["v"]; key = ">"; action = ">gv"; }

    # buffer
    { mode = ["n"]; key = "<leader>c"; action = ":bd<CR>"; }
    { mode = ["n"]; key = "<leader>["; action = ":bprevious<CR>";}
    { mode = ["n"]; key = "<leader>]"; action = ":bnext<CR>";}
  ];
}
