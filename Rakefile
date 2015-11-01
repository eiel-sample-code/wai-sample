image_name = "eiel/wai-sample"

task :build do
  sh "docker build -t #{image_name} ."
end

task :run do
  sh "docker push #{image_name}"
end
