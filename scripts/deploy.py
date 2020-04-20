"""Runs all of the scripts and commands necessary to build the website from
scratch and to deploy it via FTP."""

import os

# move to the directory of this script, so it can execute system commands in appropriate
# directories
gzip_compress = False
os.chdir(os.path.dirname(os.path.realpath(__file__)))
print("Starting Deployment")

# clean and build website
os.chdir("..")
print(os.getcwd())
os.system("jekyll clean --trace")
if gzip_compress:
	os.system("JEKYLL_ENV=production jekyll build --trace")
else:
	os.system("jekyll build --trace")
os.system("tree -C -d _site")
os.chdir("scripts")

# clean cashes and log files
import clean
# upload the website
#import upload
