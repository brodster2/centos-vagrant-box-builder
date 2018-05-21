# Test php-fpm is installed and configured correctly

describe service('php-fpm') do
    it { should be_enabled }
    it { should be_running }
end