require 'zip'

def zip_builder(source_directory, output_dir, zip_filename = "archive")
  entries = Dir.entries(source_directory) - %w(. ..)
  output_filename = "#{output_dir}/#{zip_filename}.zip"

  ::Zip::File.open(output_filename, ::Zip::File::CREATE) do |zipfile|
    entries.each do |entry|
      puts "Putting #{entry} into #{output_filename}..."
      disk_file_path = File.join(source_directory, entry)
      zipfile.get_output_stream(entry) do |zipfile_stream|
        zipfile_stream.write(File.open(disk_file_path, 'rb').read)
      end
    end
  end
end
