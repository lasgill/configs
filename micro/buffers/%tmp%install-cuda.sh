I˙SerializedBuffer˙ EventHandler˙ Cursor˙ ModTime˙   8˙EventHandler˙ 	UndoStack˙ 	RedoStack˙   %˙Stack˙ Top˙ Size   *˙Element˙ Value˙ Next˙   B˙	TextEvent˙ C˙ 	EventType Deltas˙ Time˙   Z˙Cursor˙ Loc˙ LastVisualX CurSelection˙ OrigSelection˙ Num   ˙Loc˙ X Y   ˙[2]main.Loc˙ ˙  ˙[]main.Delta˙ ˙  0˙Delta˙ Text Start˙ End˙   ˙Time˙   ţ[˙            
       Ň]\Ľ#ľĂ <       ţŽ#!/bin/bash
echo "Checking for CUDA and installing."
# Check for CUDA and try to install.
if ! dpkg-query -W cuda-8-0; then
 # The 16.04 installer works with 16.10.
 curl -O https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
 dpkg -i ./cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
 apt-get update
 apt-get install cuda-8-0 -y
fi
# Enable persistence mode
nvidia-smi -pm 1       Ň]\Ł6n <               Ň]\Ľ#¨gb < 