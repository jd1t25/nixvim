{
  config,
  lib,
  ...
}: {
  imports = [
    ./options.nix
    ./highlight.nix
    ./keys.nix
    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/cmp.nix
    #./plug/completion/schemastore.nix

    ./plug/git/gitsigns.nix
    ./plug/git/lazygit.nix
    ./plug/git/worktree.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/snippets/luasnip.nix

    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui/bufferline.nix
    ./plug/ui/indent-blankline.nix
    ./plug/ui/telescope.nix

    #./plug/utils/harpoon.nix
    ./plug/utils/comment.nix
    ./plug/utils/dap.nix
    #./plug/utils/grapple.nix
    #./plug/utils/hardtime.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/mini.nix
    ./plug/utils/nvim-autopairs.nix
    #./plug/utils/obsidian.nix
    ./plug/utils/oil.nix
    ./plug/utils/ufo.nix
    ./plug/utils/undotree.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/yaml-companion.nix

  ];
  options = {
    theme = lib.mkOption {
      default = "paradise";
      type = lib.types.enum ["paradise" "decay" "mountain" "tokyonight" "everforest" "everblush" "jellybeans" "aquarium" "gruvbox"];
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
