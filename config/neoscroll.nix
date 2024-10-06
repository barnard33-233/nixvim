{helpers, ...}:
{
  plugins.neoscroll = {
    enable = true;
  };

  extraConfigLua = ''
    require('neoscroll').setup({
      mappings = {'<C-u>', '<C-d>', 'zz', 'zb', 'zt'}
    })
  '';

  keymaps = [
    {
      mode = ["n"];  key = "<C-u>";
      action = helpers.mkRaw ''
        function()
          neoscroll.ctrl_u({ duration = 250 })
        end
      '';
    }

    {
      mode = ["n"];  key = "<C-d>";
      action = helpers.mkRaw ''
        function()
          neoscroll.ctrl_d({ duration = 250 })
        end
      '';
    }

    {
      mode = ["n"]; key = "zz";
      action = helpers.mkRaw ''
        function()
          neoscroll.zz({ half_win_duration = 250 })
        end
      '';
    }

    {
      mode = ["n"]; key = "zt";
      action = helpers.mkRaw ''
        function()
          neoscroll.zt({ half_win_duration = 250 })
        end
      '';
    }

    {
      mode = ["n"]; key = "zb";
      action = helpers.mkRaw ''
        function()
          neoscroll.zb({ half_win_duration = 250 })
        end
      '';
    }
  ];
}
