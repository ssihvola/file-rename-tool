import os
import time

def main():
	# rename the folder variable when doing real-life renaming
	folder = "files"
	# initialize a number for each individual file
	file_number = 1

	# add all the files to the list with their creation data
	for filename in os.listdir(folder):
		print(filename)
		# get the full file path
		file_path = os.path.join(folder, filename)

		# ensure it's a file
		if os.path.isfile(file_path):
			# get file creation time
			creation_time = os.path.getctime(file_path)
			# format the creation time as a timestamp
			timestamp = time.strftime("%Y-%m-%d_%H:%M:%S", time.localtime(creation_time))
			# get the file extension
			file_name, file_extension = os.path.splitext(filename)
			# create the new file name & add a number to make sure that each file is named individually
			new_filename = f"{timestamp}-{file_number}{file_extension}"
			file_number += 1
			# full path for the new file name
			new_file_path = os.path.join(folder, new_filename)
			# rename the file
			os.rename(file_path, new_file_path)


if __name__ == '__main__':
	main()