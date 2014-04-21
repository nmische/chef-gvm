#
# Cookbook Name:: gvm
# Recipe:: grails
#

bash 'gvm install grails' do
  environment({
    "JAVA_HOME" => node['java']['java_home'],
    "HOME" => node['gvm']['home'],
    "GVM_DIR" => "#{node['gvm']['home']}/.gvm",
  })
  code <<-EOH
    source "$HOME/.gvm/bin/gvm-init.sh"
    gvm install grails #{node['gvm']['grailsVersion']}
    EOH
  user node['gvm']['user']
  not_if { File.exists?("#{node['gvm']['home']}/.gvm/grails/current") }
end
