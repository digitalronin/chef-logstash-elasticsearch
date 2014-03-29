package "java7-runtime-headless"

path = "#{Chef::Config[:file_cache_path]}/logstash-1.4.0.tar.gz"
remote_file path do
  source "https://download.elasticsearch.org/logstash/logstash/logstash-1.4.0.tar.gz"
  action :create_if_missing
  not_if "ls /opt/logstash"
end

execute "untar" do
  command "tar xzvf #{path} --directory /opt"
  not_if "ls /opt/logstash"
end
