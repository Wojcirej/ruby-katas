require './katas/zip_builder/lib/zip_builder'

RSpec.describe "#zip_builder" do
  subject { zip_builder(source_directory, output_dir, zip_filename) }
  let(:source_directory) { "spec/katas/" }
  let(:output_dir) { "spec" }
  let(:zip_filename) { "test" }
  let(:zip_path) { "#{output_dir}/#{zip_filename}.zip" }
  let(:expected_filenames_in_zip) { Dir.entries(source_directory) - %w(. ..) }

  after do
    if File.exists?("#{output_dir}/#{zip_filename}.zip")
      File.delete("#{output_dir}/#{zip_filename}.zip")
    end
  end

  it "creates zip archive in specified output directory" do
    subject
    expect(File.exists?(zip_path)).to be true
  end

  it "creates zip archive with files from source directory" do
    subject
    included_filenames = Zip::File.open(zip_path) do |file|
      file.map(&:name)
    end
    expect(included_filenames).to match_array(expected_filenames_in_zip)
  end
end
