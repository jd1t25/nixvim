{
  config,
  lib,
  ...
}: {
  # Import all your configuration modules here
  imports = [
    ./core/options.nix
    ./core/keys.nix
    ./core/sets.nix

    ./plug/colorscheme.nix
    ./core/highlight.nix

    ./plug/cmp.nix # Cmp
    ./plug/lspkind.nix # Lspkind

    ./plug/lsp.nix # LSP
    ./plug/luasnip.nix # luasnip
    ./plug/fidget.nix # Fidget
    ./plug/nonels.nix # Nonels
    ./plug/lspsaga.nix # lspsaga
    ./plug/trouble.nix # Trouble

    ./plug/gitblame.nix # GitBlame
    ./plug/gitsigns.nix # gitsigns
    ./plug/gitlinker.nix # gitlinker

    ./plug/treesitter.nix # treesitter
    ./plug/treesittercontext.nix
    ./plug/treesittertextobjects.nix

    ./plug/alpha.nix
    ./plug/dressing.nvim
    ./plug/indentblankline.nix
    #./plug/precognition.nix
    ./plug/telescope.nix
    ./plug/nvimcolorizer.nix
    ./plug/comment.nix
    ./plug/commentbox.nix

    ./plug/hop.nix
    ./plug/illuminate.nix
    ./plug/ufo.nix
    ./plug/undotree.nix
    ./plug/whichkey.nix

    ./plug/conform.nix # Autosave
    ./plug/bufferline.nix # Bufferline

    ./plug/surround.nix
    ./plug/webdevicons.nix
    ./plug/autopairs.nix
    # ./plug/lazy.nix
    # ./plug/live-server.nix
  ];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "paradise"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "paradise";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
