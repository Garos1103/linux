import os.path

import lesson
import subprocess

import pytest


def test_list_file():
    output = subprocess.check_output(['./lesson','1'])
    assert 'file.txt' in output.decode()
    def test_extract_files_with_path():
        subprocess.call(['./lesson', 'c', '-p', 'path/to/archive', 'file1.txt', 'file2.txt'])
        output = subprocess.check_output(['./lesson', 'x', '-p', 'path/to/archive'])

assert os.path.exists('path/to/archive/file1.txt')
assert os.path.exists('path/to/archive/file2.txt')
def test_hash_calculation():
    with open ('file.txt', 'w') as f:
        f.write('hello world')
        output = subprocess.check_output(['./lesson', 'h', 'file.txt'])
        expected_hash = subprocess.check_output(['crc32', 'file.txt']).decode().rstrip()
        assert output.decode().rstrip() == expected_hash
        if __name__ == '__main__':
            pytest.main()
