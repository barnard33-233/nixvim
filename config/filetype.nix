{lib, ...}: {
  autoCmd = [
    {
      event = "Filetype";
      pattern = "nix";
      command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab";
    }
  ];
  editorconfig = {
    enable = true;
  };
}
