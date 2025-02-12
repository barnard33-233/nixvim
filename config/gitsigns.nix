{ helpers, ... }:

{
  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    # Navigate through hunks
    {
      mode = [ "n" ];
      key = "]h";
      action = helpers.mkRaw ''
        function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            require("gitsigns").nav_hunk('next')
            require("gitsigns").preview_hunk()
          end
        end
      '';
    }
    {
      mode = [ "n" ];
      key = "[h";
      action = helpers.mkRaw ''
        function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            require("gitsigns").nav_hunk('prev')
          end
        end
      '';
    }
    {
      mode = [ "n" ];
      key = "<leader>gs";
      action = helpers.mkRaw ''
        require("gitsigns").stage_buffer
      '';
      options = {
        desc = "Stage Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>gsh";
      action = helpers.mkRaw ''
        function()
          require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end
      '';
      options = {
        desc = "Stage Hunk";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>gshd";
      action = helpers.mkRaw ''
        require("gitsigns").undo_stage_hunk
      '';
      options = {
        desc = "Undo Stage Hunk";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>gp";
      action = helpers.mkRaw ''
        require("gitsigns").preview_hunk
      '';
      options = {
        desc = "Preview Hunk";
      };
    }
  ];
}
