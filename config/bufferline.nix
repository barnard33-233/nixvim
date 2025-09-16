{
  plugins.bufferline = {
    enable = true;
  };
  keymaps = [
    {
      mode = ["n"]; key = "<leader>bp";
      action = ":BufferLinePick<CR>";
    }
    {
      mode = ["n"]; key = "<leader>bc";
      action = ":BufferLinePickClose<CR>";
    }
    { mode = ["n"]; key = "<leader>bn";
      action = ":BufferLineMoveNext<CR>";
    }
    {
      mode = ["n"]; key = "<leader>bp";
      action = ":BufferLineMovePrev<CR>";
    }
  ];
}
