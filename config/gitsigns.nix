{ lib, ... }:

{
  plugins.gitsigns = {
    enable = true;
  };

  keymaps = [
    # Navigate through hunks
    {
      mode = [ "n" ];
      key = "]h";
      action = lib.nixvim.mkRaw ''
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
      action = lib.nixvim.mkRaw ''
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
      action = lib.nixvim.mkRaw ''
        require("gitsigns").stage_buffer
      '';
      options = {
        desc = "Stage Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>gsh";
      action = lib.nixvim.mkRaw ''
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
      action = lib.nixvim.mkRaw ''
        require("gitsigns").undo_stage_hunk
      '';
      options = {
        desc = "Undo Stage Hunk";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>gp";
      action = lib.nixvim.mkRaw ''
        require("gitsigns").preview_hunk
      '';
      options = {
        desc = "Preview Hunk";
      };
    }
  ];
}
