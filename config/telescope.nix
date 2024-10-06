{helpers, ...}:
{
  plugins.telescope = {
    enable = true;
  };

  keymaps = [
    {
      mode = [ "n" "i" ]; key = "<leader>ff";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').find_files()
        end
      '';
    }

    {
      mode = [ "n" "i" ]; key = "<leader>fg";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').live_grep()
        end
      '';
    }

    {
      mode = [ "n" "i" ]; key = "<leader>fh";
      action = helpers.mkRaw ''
        function()
          require('telescope.builtin').help_tags()
        end
      '';
    }
  ];
}
