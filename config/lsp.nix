{pkgs, ...}:
{
  plugins.lsp = {
    enable = true;

    servers = {
      clangd = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      nixd = {
        enable = true;
      };
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };

    inlayHints = true;

    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gi = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gh = {
          action = "hover";
          desc = "Hover";
        };
      };
      diagnostic = {
        "go" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "gn" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "gp" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };

    onAttach = ''
      require("lsp_signature").on_attach({
        bind = true,
        handler_opts = {
          border = "rounded"
        };
      }, bufnr)
    '';
  };

  extraPlugins = with pkgs.vimPlugins; [
    lsp_signature-nvim
  ];

  extraPackages = with pkgs; [
    asm-lsp
    verible
  ];

}
