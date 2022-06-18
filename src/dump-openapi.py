import sys
import json

from main import app

assert len(sys.argv) == 2, "You must pass in the file path you would like the openapi.json to be put in"

with open(sys.argv[1], "w") as file:
	file.write(json.dumps(app.openapi()))