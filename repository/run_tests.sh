sh build_tests.sh
echo "Run Tests"
xctool -project Repository.xcodeproj -scheme DatabaseTests run-tests
xctool -project Repository.xcodeproj -scheme RepositoryTests run-tests