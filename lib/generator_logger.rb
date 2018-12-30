require 'colorize'
class GeneratorLogger

  def log_directory_creation(path)
    puts("Created".colorize(:light_green) + " #{path}")
  end

  def log_file_generation(file)
    puts("\tGenerated".colorize(:light_green) + " #{file}")
  end

  def log_error_occurrence
    puts("Error during kata generation, cleaning up directories...".colorize(:red))
  end
end
