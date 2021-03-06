require_relative 'generator_templates'

class KataGenerator
  include GeneratorTemplates

  def initialize(kata_name, spec_file_template_generator, logger, method_arguments = [])
    @kata_name = kata_name
    @logger = logger
    @spec_file_template_generator = spec_file_template_generator
    @method_arguments = method_arguments
    @root_directory_path = "katas/#{kata_name}"
    @readme_file_path = "katas/#{kata_name}/README.md"
    @kata_lib_directory_path = "katas/#{kata_name}/lib"
    @kata_definition_file_path = "katas/#{kata_name}/lib/#{kata_name}.rb"
    @kata_spec_file_path = "spec/katas/#{kata_name}_spec.rb"
  end

  def self.call(kata_name, spec_file_template_generator, logger, method_arguments = [])
    new(kata_name, spec_file_template_generator, logger, method_arguments).call
  end

  def call
    create_kata_root_directory
    logger.log_directory_creation(root_directory_path)

    generate_kata_read_me_file
    logger.log_file_generation(readme_file_path)

    create_kata_lib_directory
    logger.log_directory_creation(kata_lib_directory_path)

    generate_kata_definition_file
    logger.log_file_generation(kata_definition_file_path)

    generate_kata_spec_file
    logger.log_file_generation(kata_spec_file_path)
  rescue => e
    clean_up
    logger.log_error_occurrence
  end

  private

  attr_reader :kata_name, :logger, :root_directory_path, :readme_file_path,
  :kata_lib_directory_path, :kata_definition_file_path, :kata_spec_file_path,
  :method_arguments, :spec_file_template_generator

  def create_kata_root_directory
    Dir.mkdir(root_directory_path)
  end

  def generate_kata_read_me_file
    File.open(readme_file_path, "w+") do |file|
      file.write(kata_read_me_template)
    end
  end

  def create_kata_lib_directory
    Dir.mkdir(kata_lib_directory_path)
  end

  def generate_kata_definition_file
    File.open(kata_definition_file_path, "w+") do |file|
      file.write(kata_definition_file_template(method_arguments))
    end
  end

  def generate_kata_spec_file
    File.open(kata_spec_file_path, "w+") do |file|
      file.write(spec_file_template_generator.call)
    end
  end

  def clean_up
    if Dir.exists?("katas/#{kata_name}")
      FileUtils.rm_rf("katas/#{kata_name}")
    end

    if File.exist?("spec/katas/#{kata_name}_spec.rb")
      File.delete("spec/katas/#{kata_name}_spec.rb")
    end
  end
end
