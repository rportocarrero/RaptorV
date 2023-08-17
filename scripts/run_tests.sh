## @file run_tests.sh
## @brief This script runs all of the verilog tests in the test.sh script and saves the output to a log file.
## @author Ryan Portocarrero
## @date 2023-06-26

#!/bin/bash

# Run the tests
echo "Running tests..."
./test.sh > ../logs/run_tests.log 2>&1

# Check if tests were successful
if [ $? -ne 0 ]; then
    echo "Tests failed!"
    exit 1
fi

echo "All tests passed successfully!"
