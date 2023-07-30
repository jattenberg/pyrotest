VENV := venv

default: clean requirements

requirements: virtual
	$(VENV)/bin/pip install -r requirements.txt

virtual:
	virtualenv $(VENV)
	$(VENV)/bin/pip install --upgrade pip pytest nbdev

clean:
	rm -rf $(VENV)
