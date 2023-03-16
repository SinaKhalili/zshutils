killport() {
    if [ -z "$1" ]; then
        echo "Error: Please specify a port number."
        return 1
    fi

    local port="$1"
    local signal="${2:--9}"

    local pids="$(lsof -ti :$port)"
    if [ -z "$pids" ]; then
        echo "No processes found running on port $port."
        return 0
    fi

    echo "Killing processes running on port $port with signal $signal:"
    for pid in $pids; do
        local pname="$(ps -p $pid -o comm=)"
        kill $signal $pid
        echo "Killed process $pname with PID $pid"
    done
}


