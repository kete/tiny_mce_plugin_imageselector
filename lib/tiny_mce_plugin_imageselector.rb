# Make sure the tiny_mce gem has been loaded before we declare any plugins
require 'tiny_mce'

# We need to make sure that the TinyMCE Editor sources are already in place
# or any changes we make may be overwritten later, this will return if TinyMCE already initialized
TinyMCE.initialize

# Create the TinyMCE Imageselector Plugin. Inherit from TinyMCE::Plugin which sets a
# default self.install method, which installs all files in self.assets_path
# into the public/javascripts/tiny_mce directory
class TinyMCEImageselector < TinyMCE::Plugin

  # This lets the TinyMCE::Plugin classes install method know where to find
  # the assets we need to install. If were overwrite the self.install method
  # here, then we don't need to provide this line
  self.assets_path = File.join(File.dirname(__FILE__), 'assets')

end

# Finally, tell the TinyMCEImageselector Plugin to install itself. The install method
# can be overwritten in the class definition above. TinyMCE::Plugin provide a
# default one that will work fine in this example
TinyMCEImageselector.install
