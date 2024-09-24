{
  autoCmd = [
    {
    desc = "Highlight when yanking (copying) text";
    command = "vim.highlight.on_yank()";
    event = [
      "TextYankPost"
    ];
    # pattern = [
    #   "*.c"
    #   "*.h"
    # ];
    }
  ];
}
