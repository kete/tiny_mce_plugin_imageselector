Gem::Specification.new do |s|
  s.name = "tiny_mce_plugin_imageselector"
  s.version = "0.0.5"
  s.authors = ["Walter McGinnis"]
  s.email = "walter@katipo.co.nz"
  s.homepage = "http://github.com/kete/tiny_mce_plugin_imageselector"
  s.summary = "A gem to install the imageselector tiny_mce plugin in tandem with the tinymce gem."
  s.description = "This gem uses the tiny_mce gem's plugin system to install the https://github.com/kete/image_selector_tinymce_plugin plugin."

  s.files = Dir["lib/**/*", "[A-Z]*", "tiny_mce_plugin_imageselector.gemspec"]
  s.require_path = "lib"

  s.extra_rdoc_files = Dir["*.rdoc"]
  s.rdoc_options = ["--charset=UTF-8", "--exclude=lib/assets"]
end
