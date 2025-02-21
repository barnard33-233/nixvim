{pkgs, ...}: 
{
  config = {
    opts = {
      # tab
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      # ui
      number = true;
      relativenumber = true;
      cursorline = true;
      splitbelow = true;
      splitright = true;
      termguicolors = true;
      showmode = true;
      wrap = false;

      # searching
      incsearch = true;
      hlsearch = false;
      ignorecase = true;
      smartcase = true;

      exrc = true;
    };
    clipboard = {
      register = "unnamedplus";
      providers.xclip.enable = true;
    };

    # appearence
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "latte";
        background = {
          light = "latte";
          dark = "mocha";
        };
        transparent_background = false;
        show_end_of_buffer = false;
        term_colors = false;
        dim_inactive = {
            enabled = true;
            shade = "dark";
            percentage = 0.15;
        };
        styles = {
          comments = ["italic"];
          conditionals = ["italic"];
        };
        integrations = {
          nvimtree = true;
        };

      };
    };
    extraConfigLua = ''
      function fix_paste(reg)
        return function(lines)
          local content = vim.fn.getreg('"')
          return vim.split(content, '\n')
        end
      end

      if (os.getenv('SSH_TTY') ~= nil)
      then
      vim.g.clipboard = {
        name = 'OSC 52',
        copy = {
          ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
          ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
        },
        paste = {
          ['+'] = fix_paste("+"),
          ['*'] = fix_paste("*"),
        },
      }
      end
    '';
  };

}
