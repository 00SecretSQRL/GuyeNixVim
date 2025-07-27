{
  pkgs,
  lib,
  config,
  ...
}: {
  config = {
    # Simple keypress display using Lua
    extraConfigLua = ''
      -- Keypress display functionality
      local function setup_keypress_display()
        -- Create a floating window to show keypresses
        local function show_keypress(key)
          local buf = vim.api.nvim_create_buf(false, true)
          local width = math.max(20, #key + 4)
          local height = 3
          local row = math.floor((vim.o.lines - height) / 2) - 2
          local col = math.floor((vim.o.columns - width) / 2)
          
          local opts = {
            relative = 'editor',
            width = width,
            height = height,
            row = row,
            col = col,
            style = 'minimal',
            border = 'rounded',
            title = ' Keypress ',
            title_pos = 'center'
          }
          
          local win = vim.api.nvim_open_win(buf, false, opts)
          vim.api.nvim_buf_set_lines(buf, 0, -1, false, {'', '  ' .. key .. '  ', ''})
          vim.api.nvim_buf_set_option(buf, 'modifiable', false)
          vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')
          
          -- Highlight the text
          vim.api.nvim_buf_add_highlight(buf, -1, 'Special', 1, 2, -3)
          
          -- Auto-close after 800ms
          vim.defer_fn(function()
            if vim.api.nvim_win_is_valid(win) then
              vim.api.nvim_win_close(win, true)
            end
          end, 800)
        end
        
        -- Test keypress display
        vim.keymap.set('n', '<leader>kt', function()
          show_keypress('Test Keypress')
        end, { desc = 'Test keypress display' })
        
        -- Show keypress for common leader combinations
        local leader_mappings = {
          ['<leader>w'] = 'Window',
          ['<leader>f'] = 'Find',
          ['<leader>g'] = 'Git',
          ['<leader>d'] = 'Debug',
          ['<leader>l'] = 'LSP',
          ['<leader>t'] = 'Toggle',
          ['<leader>c'] = 'Code',
          ['<leader>s'] = 'Search',
          ['<leader>u'] = 'UI',
          ['<leader>p'] = 'Paste',
          ['<leader>y'] = 'Yank',
          ['<leader>r'] = 'Replace',
          ['<leader>n'] = 'Next',
          ['<leader>b'] = 'Buffer',
          ['<leader>h'] = 'Help',
        }
        
        -- Create keymaps that show the keypress
        for key, desc in pairs(leader_mappings) do
          vim.keymap.set('n', key, function()
            show_keypress(desc)
            -- Return the original key to continue with normal behavior
            return key
          end, { expr = true, desc = desc })
        end
        
        -- Show keypress for some common keys
        local common_keys = {
          ['j'] = 'Down',
          ['k'] = 'Up', 
          ['h'] = 'Left',
          ['l'] = 'Right',
          ['w'] = 'Word',
          ['b'] = 'Back',
          ['e'] = 'End',
          ['0'] = 'Start',
          ['$'] = 'End',
          ['gg'] = 'Top',
          ['G'] = 'Bottom',
          ['dd'] = 'Delete',
          ['yy'] = 'Yank',
          ['p'] = 'Paste',
          ['u'] = 'Undo',
          ['<C-r>'] = 'Redo',
          ['<C-f>'] = 'Page Down',
          ['<C-b>'] = 'Page Up',
        }
        
        for key, desc in pairs(common_keys) do
          vim.keymap.set('n', key, function()
            show_keypress(desc)
            return key
          end, { expr = true, desc = desc })
        end
      end
      
      setup_keypress_display()
    '';
  };
} 