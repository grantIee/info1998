#!/bin/bash
docker run -i -t -p 8888:8888 -v ~/info1998:/localFILES jupyter /bin/bash -c "yes/bin/jupyter notebook --notebook-dir=localFILES/notebooks --ip='*' --port=8888 --no-browser --allow-root"

