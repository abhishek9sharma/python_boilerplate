rm -rf bpenv
python3 -m pip install --user virtualenv
python3 -m virtualenv bpenv
source bpenv/bin/activate
cd src && pip install -e .
cd ..
