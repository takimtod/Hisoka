{ pkgs } = {
  deps = [
    pkgs.nodejs-19_x
    pkgs.nodePackages.typescript-language-server
    pkgs.ffmpeg
    pkgs.libwebp
    pkgs.chromium
    pkgs.zip
    pkgs.speedtest
  ];
  env = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.libuuid
    ];
  };
}