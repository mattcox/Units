#!/usr/bin/env bash
#
# Tests Units on Linux, in a container on this Mac using apple/container. Run
# from anywhere:
#
#     Scripts/test-linux.sh            # the test suite
#     Scripts/test-linux.sh shell      # a shell in the same environment
#
# The container gets 8 GB of memory and 6 CPUs, because apple/container's
# default of 1 GB is not enough for the Swift compiler and the build stalls
# rather than failing. Override them with UNITS_LINUX_MEMORY and
# UNITS_LINUX_CPUS.
#
# Requires `brew install container` and `container system start`.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
IMAGE="swift:6.2-noble"
MEMORY="${UNITS_LINUX_MEMORY:-8G}"
CPUS="${UNITS_LINUX_CPUS:-6}"
MODE="${1:-tests}"

RUN=(
	container run --rm
	--memory "$MEMORY" --cpus "$CPUS"
	--volume "$ROOT:/work/Units"
	--workdir /work/Units
)

case "$MODE" in
	tests)
		"${RUN[@]}" "$IMAGE" swift test --scratch-path .build/linux
		;;

	shell)
		exec "${RUN[@]}" --interactive --tty "$IMAGE" bash
		;;

	*)
		echo "Unknown mode: $MODE (expected tests or shell)" >&2
		exit 1
		;;
esac
