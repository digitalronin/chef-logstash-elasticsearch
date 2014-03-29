# For logstash 1.4.0, we need Elasticsearch 1.0.1, so we can't use
# the packaged version in the elasticsearch apt repo.
path = "#{Chef::Config[:file_cache_path]}/elasticsearch-1.0.1.tar.gz"
remote_file path do
  source "https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.tar.gz"
  action :create_if_missing
  not_if "ls /opt/elasticsearch"
end

execute "untar" do
  command "tar xzvf #{path} --directory /opt; ln -s /opt/elasticsearch-1.0.1 /opt/elasticsearch"
  not_if "ls /opt/elasticsearch"
end
