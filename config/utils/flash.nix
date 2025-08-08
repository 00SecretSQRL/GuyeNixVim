{
  plugins.flash = {
    enable = true;
    settings = {
      # Jump labels appear as you type
      labels = "asdfghjklqwertyuiopzxcvbnm";
      
      # Search options
      search = {
        # Search mode. Exact match by default
        mode = "exact";
        # Show search results incrementally
        incremental = false;
        # When `false`, find only matches in the current window
        multi_window = true;
        # Enable wraparound search
        wrap = true;
        # Maximum number of matches to highlight
        max_length = false;
      };
      
      # Jump options
      jump = {
        # Save location in the jumplist
        jumplist = true;
        # Jump position
        pos = "start";
        # Add pattern to search history
        history = false;
        # Add pattern to search register
        register = false;
        # Clear highlight after jump
        nohlsearch = false;
        # Automatically jump when there is only one match
        autojump = false;
      };
      
      # Label options
      label = {
        # Allow uppercase labels
        uppercase = true;
        # Add any labels with the correct case here, that you want to exclude
        exclude = "";
        # Add a label at the current position for the current word
        current = true;
        # Show the label after the match
        after = true;
        # Show the label before the match
        before = false;
        # Position of the label extmark
        style = "overlay";
        # Flash tries to re-use labels that were already assigned to a position,
        # when typing more characters. By default only lower-case labels are re-used.
        reuse = "lowercase";
        # For the current window, label targets closer to the cursor first
        distance = true;
        # minimum pattern length to show labels
        # Ignored for custom labelers.
        min_pattern_length = 0;
        # Enable this to use rainbow colors to highlight labels
        # Can be useful for colorblind users
        rainbow = {
          enabled = false;
          # number between 1 and 9
          shade = 5;
        };
      };
      
      # Action to perform when picking a label
      action = null;
      
      # Initial pattern to use when opening flash
      pattern = "";
      
      # When `true`, flash will continue after the first match,
      # allowing you to navigate to other matches using the same labels
      continue = false;
      
      # Set config to a function to dynamically configure flash based on the mode.
      config = null;
      
      # Character to use for prompt
      prompt = {
        enabled = true;
        prefix = [ [ "⚡" "FlashPromptIcon" ] ];
      };
      
      # Options for remote flash
      remote_op = {
        # Restore windows on abort
        restore = true;
        # Operator pending motion
        motion = true;
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" "x" "o" ];
      key = "s";
      action.__raw = "function() require('flash').jump() end";
      options = {
        desc = "Flash";
      };
    }
    {
      mode = [ "n" "x" "o" ];
      key = "S";
      action.__raw = "function() require('flash').treesitter() end";
      options = {
        desc = "Flash Treesitter";
      };
    }
    {
      mode = "o";
      key = "r";
      action.__raw = "function() require('flash').remote() end";
      options = {
        desc = "Remote Flash";
      };
    }
    {
      mode = [ "o" "x" ];
      key = "R";
      action.__raw = "function() require('flash').treesitter_search() end";
      options = {
        desc = "Treesitter Search";
      };
    }
    {
      mode = "c";
      key = "<c-s>";
      action.__raw = "function() require('flash').toggle() end";
      options = {
        desc = "Toggle Flash Search";
      };
    }
  ];
}
