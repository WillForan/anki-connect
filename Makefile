install:
	cp AnkiConnect.py ~/Documents/Anki/addons21/

testserv:
	anki &
	sleep 5
	curl http://127.0.0.1:8765 -H "Content-Type: application/json" -X POST -d "`cat test/addNote.json`"
