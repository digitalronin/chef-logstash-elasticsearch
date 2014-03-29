execute "add-elasticsearch-repo-key" do
  command "wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -"
  not_if "apt-key list | grep Elasticsearch"
end

execute "add-elasticsearch-repo" do
  command "echo 'deb http://packages.elasticsearch.org/elasticsearch/0.90/debian stable main' >> /etc/apt/sources.list"
  not_if "grep packages.elasticsearch.org.elasticsearch /etc/apt/sources.list"
end

execute "apt-get update"

package "elasticsearch"

