   ///////////////////////////////////
  /// Native Dropper - Windows NT ///
 ///////////////////////////////////

 Overview:
     The idea behind this script is simple: it stands as "dropper" or
     trojan-wrapper that carries a second batchfile script which is encoded
     in BASE-64 and appended to the end of the script.

     This script then reads off only the BASE-64 encoded payload, saves it
     to disk (in the Temporary Files directory), decodes the payload using
     Windows Certificate Utility (certutil.exe) and finally executes it.

     Once the .bat payload has been decoded and executed, this dropper script
     will then self-destruct (melt) on the disk. The script will not be found
     in the recycling-bin.

How to?
     In the "dropper" directory found in this repository, there is an
     inforgraphic showing one how to manually encode a .bat payload using
     Windows Certificate Utility.

Note:
     In the dropper script, there is a placeholder payload. Be sure not to
     delete any lines above it (lines 1 through 19) as the script reads itself
     and this is how it determines what is the actual script and what is the
     intened payload.

Good luck!
