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
        desc = "Escape to normal mode";
        noremap = true;
      };
    }
{
      mode = [ "n" "i"];
      key = "JK";
      action = "<Esc>:wq<CR>";
      options = {
        desc = "Save and Exit";
        noremap = true;
      };
    }
        {
      mode = [ "n" "i"];
      key = "JJ";
      action = "<Esc>:w<CR>";
      options = {
        desc = "Save the file";
        noremap = true;
      };
        }
        {
      mode = [ "n" "i"];
      key = "KK";
      action = "<Esc>:qa!<CR>";
      options = {
        desc = "Don't Save and exit";
        noremap = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "<C-C>";
      action = ''"+y'';
      options = {desc = "Copy to system clipboard";};
    }
    {
      mode = ["n" "v"];
      key = "<C-V>";
      action = "p";
      options = {desc = "Paste from system clipboard";};
    }
    {
      mode = ["n" "v"];
      key = "dd";
      action = "\"_dd";
      options = {desc = "Delete to Void";};
    }
    {
      mode = ["n" "v"];
      key = "c";
      action = "\"_c";
      options = {desc = "Cut to void";};
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options = {desc = "Move 1 left indent";};
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options = {desc = "Move 1 right indent";};
    }
    {
      mode = "n";
      key = "j";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {desc = "Dealing with word wrap"; expr = true};
    }
    {
      mode = "n";
      key = "k";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {desc = "Dealing with word wrap"; expr = true};
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
