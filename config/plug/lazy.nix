_: {
  plugins.lazy = {
    enable = true;
    plugins = [
      {
        repo = "barrett-ruth/live-server.nvim"; # Specify the plugin repository
        enabled = true;
        cmd = [
          "LiveServerStart"
          "LiveServerStop"
        ]; # List of commands for lazy loading
        config = true;
      }
    ];
  };
}
# plugins.lazy = {
#   enable = true;
#   plugins = [
#     {
#       "barrett-ruth/live-server.nvim" = {
#         enabled = true;
#         cmd = [
#           "LiveServerStart"
#           "LiveServerStop"
#         ];
#         config = true;
#       };
#     }
#   ];
# };
# }

