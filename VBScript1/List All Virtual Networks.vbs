' Description: Lists all the virtual networks on a computer.


On Error Resume Next

Set objVS = CreateObject("VirtualServer.Application")
Set colNetworks = objVS.VirtualNetworks

For Each objNetwork in colNetworks
    Wscript.Echo "Bytes dropped: " & objNetwork.BytesDropped
    Wscript.Echo "Bytes received: " & objNetwork.BytesReceived
    Wscript.Echo "Bytes sent: " & objNetwork.BytesSent
    Wscript.Echo "File: " & objNetwork.File
    Wscript.Echo "Host adapter: " & objNetwork.HostAdapter
    Wscript.Echo "Name: " & objNetwork.Name
    Wscript.Echo "Notes: " & objNetwork.Notes
    Wscript.Echo "Packets dropped: " & objNetwork.PacketsDropped
    Wscript.Echo "Packets received: " & objNetwork.PacketsReceived
    Wscript.Echo "Packets sent: " & objNetwork.PacketsSent
    Wscript.Echo
Next

