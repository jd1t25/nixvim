{
  lib,
  pkgs,
  ...
}: let
  # inherit (lib) mkIf;
  pname = "live-server";
  version = "0.1.0";
  # live_server_enable = true;
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "barrett-ruth";
        repo = "live-server.nvim";
        rev = "5fc8abb";
        hash = lib.fakeHash;
      };
      buildInputs = [pkgs.nodejs pkgs.pnpm]; # Ensure pnpm is available
      installPhase = ''
        pnpm install
        pnpm add -g live-server
      '';
    })
  ];

  extraConfigLua = ''
    require('live-server').setup(opts)
     vim.cmd [[
      command! LiveServerStart lua require('live-server').start()
      command! LiveServerStop lua require('live-server').stop()
    ]]
  '';
  # keymaps = mkIf codecompanion_enable [
  #   {
  #     mode = [
  #       "n"
  #       "v"
  #     ];
  #     key = "<leader>a";
  #     action = "CodeCompanion";
  #     options = {
  #       silent = true;
  #       desc = "+codecompanion";
  #     };
  #   }
  #   {
  #     key = "<leader>ac";
  #     action = ":CodeCompanionToggle<CR>";
  #     mode = "n";
  #     options = {
  #       silent = true;
  #       desc = "Toggle CodeCompanion";
  #     };
  #   }
  #   {
  #     key = "<leader>af";
  #     action = ":CodeCompanionActions<CR>";
  #     mode = "n";
  #     options = {
  #       silent = true;
  #       desc = "CodeCompanion Actions";
  #     };
  #   }
  # ];
}
