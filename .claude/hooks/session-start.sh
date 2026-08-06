#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No dependencies to install — this is a static Foam markdown workspace.
exit 0
