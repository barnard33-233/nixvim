{pkgs, ...}: 
{
  config = {
    opts = {
      exrc = true;
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

      laststatus = 3;
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

      vim.api.nvim_create_user_command(
        "Chroot",
        function(opts)
          local tree_ok, tree_api = pcall(require, "nvim-tree.api")

          if tree_ok then
            NvimTreeChroot(tree_api, opts.args)
          end

          vim.api.nvim_set_current_dir(opts.args)
        end,
        {
          nargs = "?",
          complete = "dir",
        }
      )
      '';
  };

}
