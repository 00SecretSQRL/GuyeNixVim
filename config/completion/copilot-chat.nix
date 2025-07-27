{
  plugins.copilot-chat = {
    enable = true;
    settings = {
      # Model configuration
      model = "gpt-4o";
      
      # Chat settings
      auto_follow_cursor = true;
      show_help = true;
      show_folds = true;
      
      # Question header
      question_header = "## User ";
      answer_header = "## Copilot ";
      error_header = "## Error ";
      
      # Separator for user and copilot messages
      separator = "───";
      
      # Window configuration
      window = {
        layout = "vertical"; # 'vertical', 'horizontal', 'float', 'replace'
        width = 0.5; # fractional width of parent, or absolute width in columns when > 1
        height = 0.5; # fractional height of parent, or absolute height in rows when > 1
        # Options below only apply to floating windows
        relative = "editor"; # 'editor', 'win', 'cursor', 'mouse'
        border = "single"; # 'none', single', 'double', 'rounded', 'solid', 'shadow'
        row = null; # row position of the window, default is centered
        col = null; # column position of the window, default is centered
        title = "Copilot Chat"; # title of chat window
        footer = null; # footer of chat window
        zindex = 1; # determines if window is on top or below other floating windows
      };
      
      # Chat mappings
      mappings = {
        complete = {
          detail = "Use @<Tab> or /<Tab> for options.";
          insert = "<Tab>";
        };
        close = {
          normal = "q";
          insert = "<C-c>";
        };
        reset = {
          normal = "<C-r>";
          insert = "<C-r>";
        };
        submit_prompt = {
          normal = "<CR>";
          insert = "<C-CR>";
        };
        accept_diff = {
          normal = "<C-y>";
          insert = "<C-y>";
        };
        yank_diff = {
          normal = "gy";
          register = '"';
        };
        show_diff = {
          normal = "gd";
        };
        show_system_prompt = {
          normal = "gp";
        };
        show_user_selection = {
          normal = "gs";
        };
      };
    };
  };

  # Key mappings for Copilot Chat
  keymaps = [
    {
      mode = "n";
      key = "<leader>cc";
      action = "<cmd>CopilotChat<CR>";
      options = {
        desc = "Open Copilot Chat";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ccq";
      action = "<cmd>CopilotChatClose<CR>";
      options = {
        desc = "Close Copilot Chat";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ccr";
      action = "<cmd>CopilotChatReset<CR>";
      options = {
        desc = "Reset Copilot Chat";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cce";
      action = "<cmd>CopilotChatExplain<CR>";
      options = {
        desc = "Explain code with Copilot";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ccf";
      action = "<cmd>CopilotChatFix<CR>";
      options = {
        desc = "Fix code with Copilot";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cco";
      action = "<cmd>CopilotChatOptimize<CR>";
      options = {
        desc = "Optimize code with Copilot";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ccd";
      action = "<cmd>CopilotChatDocs<CR>";
      options = {
        desc = "Generate docs with Copilot";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>cct";
      action = "<cmd>CopilotChatTests<CR>";
      options = {
        desc = "Generate tests with Copilot";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>cc";
      action = "<cmd>CopilotChatVisual<CR>";
      options = {
        desc = "Chat about selection";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>cce";
      action = "<cmd>CopilotChatExplain<CR>";
      options = {
        desc = "Explain selected code";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>ccf";
      action = "<cmd>CopilotChatFix<CR>";
      options = {
        desc = "Fix selected code";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>ccr";
      action = "<cmd>CopilotChatReview<CR>";
      options = {
        desc = "Review selected code";
        silent = true;
      };
    }
  ];
}
