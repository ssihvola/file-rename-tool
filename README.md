# File Rename Tool with Python & Robot Framework

This is a script I created for my personal use. I needed a way to rename my video files according to date and time the file is created. Manual typing is of course not an option when there are hundreds, is not thousands of files.

Before doing any real-life renaming, it is good to test that the script works as expected. I chose Robot Framework as my testing tool, because of it's OperatingSystem library.

## Usage

Install Robot Framework & activate the virtual environment

``python -m venv .venv
source .venv/bin/activate
pip install robotframework``

## Specs

- Python script to keep my personal files in order
- Tests: Robot Framework creates dummy folders with dummy files with random names, runs the script and checks that files are renamed accordingly