{pkgs, lib, ...}:
{
  plugins.lspsaga = {
    enable = true;
    settings = {
      lightbulb.enable = false;
    };
  };
  
  keymaps = [
    { mode = ["n"]; key = "<leader>df"; action = "<cmd>Lspsaga finder<CR>";}
    { mode = ["n"]; key = "<leader>dci"; action = "<cmd>Lspsaga incoming_calls<CR>";}
    { mode = ["n"]; key = "<leader>dco"; action = "<cmd>Lspsaga outgoing_calls<CR>";}
    { mode = ["n"]; key = "<leader>dh"; action = "<cmd>Lspsaga hover_doc<CR>";}
    { mode = ["n"]; key = "<leader>do"; action = "<cmd>Lspsaga outline<CR>";}
  ];
}
