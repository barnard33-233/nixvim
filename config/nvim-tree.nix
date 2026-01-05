{
  plugins.nvim-tree = {
    enable = true;
    settings = {
      git = {
        enable = true;
        ignore = false;
      };
      tab.sync = {
        close = true;
        open = true;
      };
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

  extraConfigLua = ''
    function NvimTreeChroot(api, path)
        path = path or vim.fn.expand("~")
        api.tree.change_root(path)
        print("NvimTreeChroot: " .. path)
    end

  '';
}
