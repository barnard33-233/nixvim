{
  plugins.bufferline = {
    enable = true;
  };
  keymaps = [
    {
      mode = ["n"]; key = "<leader>b";
      action = ":BufferlineGoToBuffer";
    }
  ];
}
