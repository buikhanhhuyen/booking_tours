Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'
  config.assets_languages = ['en', 'fr']
  config.assets_plugins = ['image', 'smiley']
  config.authorize_with :cancan
end
