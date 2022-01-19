# This is an initial skeleton to iterate through services
# Comment the services that you do not want to run
myServices=(
    'my_service0'
    'my_service1'
    # 'my_service2'
    'my_service3'
)

# Stop if failure
set -e

### RUN the script against all services in list
echo "####### Running my_script inside myServices #######"
for i in "${!myServices[@]}"; do 
    my_script ${myServices[$i]}
done