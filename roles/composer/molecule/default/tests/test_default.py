import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_composer_installed(host):
    composer = host.file('/bin/composer')

    assert composer.exists
    assert composer.user == 'root'
    assert composer.group == 'root'
    assert composer.mode == 0o775
