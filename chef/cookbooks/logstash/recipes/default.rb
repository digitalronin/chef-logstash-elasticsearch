execute "add-logstash-repo-key" do
  command "wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -"
  not_if "apt-key list | grep Elasticsearch"
end

execute "add-logstash-repo" do
  command "echo 'deb http://packages.elasticsearch.org/logstash/1.4/debian stable main' >> /etc/apt/sources.list"
  not_if "grep packages.elasticsearch.org.logstash /etc/apt/sources.list"
end

execute "apt-get update"

package "logstash"

