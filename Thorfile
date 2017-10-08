require "thor/group"

class Default < Thor
  desc "middleman build", "build Middleman site"
  def build
  end

  desc "middleman serve", "serve Middleman site"
  def serve
    print "hey"
  end
end

module Middleman
  class Generator < ::Thor::Group
    include ::Thor::Actions

    source_root File.expand_path(File.dirname(__FILE__))

    def copy_default_files
      directory "docs", ".", exclude_pattern: /\.DS_Store$/
    end
  end
end
