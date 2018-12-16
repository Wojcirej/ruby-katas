# Zip builder

### Description
This is not any kata from codewards. Just a script, which creates zip file with files from selected directory.

Uses [rubyzip](https://github.com/rubyzip/rubyzip).

Script takes three arguments:
`source_directory` - directory containing files to be included into zip
`output_dir` - the localization of zip file
`zip_filename` - name of zip archive (default: `archive`)

### Examples
```ruby
zip_builder("spec/katas/", "spec", "test") #will create zip archive with 'test' name containing files from spec/katas/ in spec/ directory 
```
