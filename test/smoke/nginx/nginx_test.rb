# Inspec test for Nginx role

describe package('nginx') do
    it { should be_installed }
    its('version') { should include '1.14.0' }
end

describe service('nginx') do
    it { should be_enabled }
    it { should be_running }
end

describe port(80) do
    it { should be_listening }
    its('processes') { should include 'nginx'}
end