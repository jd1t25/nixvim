{
  globals.mapleader = " ";
  keymaps = [
    # General maps
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }
    {
      mode = "i";
      key = "jk";
      action = "<esc>";
      options = {
        desc = "escape";
	noremap = true;
      };
    }
{
      mode = "n";
      key = "JK";
      action = "<Esc>:wq<CR>";
      options = {
        desc = "escapea and save";
	noremap = true;
      };
    }
  ];
 # extraConfigVim = ''
 #   nnoremap jk <ESC>
 #   '';
  #  extraConfigLua = ''
  #   function ToggleLineNumber()
  #   if vim.wo.number then
  #     vim.wo.number = false
  #   else
  #     vim.wo.number = true
  #       vim.wo.relativenumber = false
  #       end
  #       end
  #
  #       function ToggleRelativeLineNumber()
  #       if vim.wo.relativenumber then
  #         vim.wo.relativenumber = false
  #       else
  #         vim.wo.relativenumber = true
  #           vim.wo.number = false
  #           end
  #           end
  #
  #           function ToggleWrap()
  #           vim.wo.wrap = not vim.wo.wrap
  #           end
  # '';
}
