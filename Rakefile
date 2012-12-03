require 'bundler/setup'
require 'nanoc/tasks'

task :default => :compile

task :compile do
  sh 'nanoc co'
end

task :deploy => :compile do 
  sh 'rsync -av output/ pagerapp@hatemogi.com:www/'
end  
  
task :run => :compile do 
  sh 'nanoc au'
end

task :update_bootstrap do
  sh 'unzip -o ~/Downloads/bootstrap.zip'
  sh 'cp bootstrap/css/* content/css/'
  sh 'cp bootstrap/img/* content/img/'
  sh 'cp bootstrap/js/* content/js/'
  %w(bootstrap-responsive bootstrap).each do |name|
    path = "content/css/#{name}"
    sh "mv #{path}.min.css #{path}.css"
  end  
  %w(bootstrap).each do |name|
    path = "content/js/#{name}"
    sh "mv #{path}.min.js #{path}.js"
  end  

end
