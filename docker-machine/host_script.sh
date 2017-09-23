PORT_HOST="8888"
PORT_VM="8000"
NEW_MACHINE_NAME="newMachine"
VOLUME_NAME="dataVolume"
VM_PATH="/sharedFolder"
CONTAINER_NAME="nodeContainer"
SCRIPT_NAME="vm_script.sh"
IMAGE_NAME="node"

CURRENT_PATH=`pwd`
docker-machine create --driver virtualbox $NEW_MACHINE_NAME
docker-machine env $NEW_MACHINE_NAME
VM_IP=`docker-machine ip $NEW_MACHINE_NAME`
eval $(docker-machine env $NEW_MACHINE_NAME)
docker volume create $VOLUME_NAME
docker run -dit -v $VOLUME_NAME:/$VM_PATH -p $PORT_HOST:$PORT_VM --name $CONTAINER_NAME $IMAGE_NAME
docker-machine scp $CURRENT_PATH/$SCRIPT_NAME $NEW_MACHINE_NAME:$VM_PATH
docker exec -i $CONTAINER_NAME /home/$SCRIPT_NAME

