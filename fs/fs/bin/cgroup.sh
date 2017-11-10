#! /bin/sh

error()
{
	echo "$@"
	exit 1
}

mkdir -p /dev/cpuctl || error "can't create /dev/cpuctl"
mount none /dev/cpuctl -ocpu -tcgroup
# reserve 90% cpu for audio tasks
mkdir -p /dev/cpuctl/audio
echo 9216 > /dev/cpuctl/audio/cpu.shares

# group others
mkdir -p /dev/cpuctl/others
echo 1024 > /dev/cpuctl/others/cpu.shares

#put all the task in others group
cat /dev/cpuctl/tasks | while read x
do 
	echo $x> /dev/cpuctl/others/tasks
done

#at this point only realtime task should be in /dev/cpuctl/tasks
