#!/usr/bin/env python
import os

# PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)


# def remove_file(filepath):
#     os.remove(os.path.join(PROJECT_DIRECTORY, filepath))

# def remove_dir(dirpath):
#     os.rmdir(os.path.join(PROJECT_DIRECTORY, dirpath))


# REMOVE_PATHS = [
#     '{% if cookiecutter.packaging != "pip" %} requirements.txt {% endif %}',
#     '{% if cookiecutter.packaging != "poetry" %} poetry.lock {% endif %}',
# ]



# if __name__ == '__main__':

#     if '{{ cookiecutter.create_author_file }}' != 'y':
#         remove_file('AUTHORS.rst')
#         remove_file('docs/authors.rst')

#     if 'no' in '{{ cookiecutter.command_line_interface|lower }}':
#         cli_file = os.path.join('{{ cookiecutter.project_slug }}', 'cli.py')
#         remove_file(cli_file)

#     if 'Not open source' == '{{ cookiecutter.open_source_license }}':
#         remove_file('LICENSE')

#     for path in REMOVE_PATHS:
#     path = path.strip()
#     if path and os.path.exists(path):
#         if os.path.isdir(path):
#             os.rmdir(path)
#         else:
#             os.unlink(path)



