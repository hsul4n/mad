require "thor"

class Mad < Thor
  include Thor::Actions

  DIRECTORY = '~/Code'
  SCRIPTS = {
    'laravel new.*': 'php/laravel',
    'lumen new.*': 'php/lumen',
    'rails new.*': 'ruby/rails',
    'flutter create.*': 'dart/flutter',
  }

  desc "new", "Create new project"
  option :org, required: true, banner: "<org-name>"
  def new(command)
    script = SCRIPTS.find { |script, path| command.match?(script.to_s) }

    if (script)
      dir = "#{DIRECTORY}/#{script.last}/#{options[:org].downcase}"
      `mkdir -p #{dir} && cd #{dir} && #{command}`
      say "Successfully created project at: #{dir}", :green
    else
      say "Not found"
    end
  end
end
