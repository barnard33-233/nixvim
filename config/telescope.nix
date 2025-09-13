{helpers, ...}:
{
  plugins.telescope = {
    enable = true;
  };

  keymaps = [
    {
      mode = [ "n" ]; key = "<leader>ff";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').find_files()
        end
      '';
    }

    {
      mode = [ "n" ]; key = "<leader>fg";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').live_grep()
        end
      '';
    }

    {
      mode = [ "n" ]; key = "<leader>fh";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').help_tags()
        end
      '';
    }

    {
      mode = [ "n" ]; key = "<leader>fb";
      action = ":Telescope buffers<CR>";
    }

    {
      mode = [ "n" ]; key = "<leader>fm";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').keymaps()
        end
      '';
    }
  ];
}
