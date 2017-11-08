activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload
activate :directory_indexes
set :index_file, "response.json"

# Per-page layout changes
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
end
