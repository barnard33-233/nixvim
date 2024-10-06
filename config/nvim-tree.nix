{
  plugins.nvim-tree = {
    enable = true;
    git = {
      enable = true;
      ignore = false;
    };
    tab.sync = {
      close = true;
      open = true;
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = ":NvimTreeToggle<CR>";
      options = {
        desc = "toggle nvim-tree";
      };
    }
  ];
}
