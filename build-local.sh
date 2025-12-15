#!/usr/bin/env bash
set -e
set -x

# ./_updatePublisher.sh
# run _updatePublisher on a new setup or to update the publisher JAR
java -Xmx4g -jar ./input-cache/publisher.jar publisher -ig .
echo "Finished building, see ./output"
