run_command() {
    local command_to_run="$*"
    local output
    local exit_code

    # Capture all output (stdout and stderr)
    output=$(eval "$command_to_run" 2>&1) || exit_code=$?
    exit_code=${exit_code:-0}

    if [ $exit_code -ne 0 ]; then
        echo -e "\033[0;31m[ERROR] Command failed (Exit Code $exit_code): $command_to_run\033[0m" >&2
        echo -e "\033[0;31m$output\033[0m" >&2

        exit $exit_code
    fi
}

echo "\n🐍 Installing Specify - Spec-kit binary..."
run_command "pipx install specify-cli"
echo "✅ Done"

echo "\n🐍 Installing Taskfile - Build Automation Runner..."
run_command "pipx install go-task-bin"
echo "✅ Done"
