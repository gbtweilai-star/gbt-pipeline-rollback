#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_pipeline_rollback info
PYTHONPATH=src python -m gbt_pipeline_rollback check --payload '{"name": "<在此填写>"}'
PYTHONPATH=src python -m gbt_pipeline_rollback run   --payload '{"name": "<在此填写>"}'
