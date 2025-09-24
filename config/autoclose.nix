{
  plugins.autoclose = {
    enable = true;
  };
  extraConfigLua = ''
    require("autoclose").setup({
       keys = {
          ["'"] = { escape = true, close = true, pair = "'", disabled_filetypes = {"rust"} },
       },
    })
  '';
}
