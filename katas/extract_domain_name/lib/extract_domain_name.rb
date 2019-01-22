def extract_domain_name(url)
  URI.parse(url).host.split('.').last(2).first
end
