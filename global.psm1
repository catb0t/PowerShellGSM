$GlobalDetails = @{
  #7zip
  SevenZip             = ".\tools\7z\7za.exe"

  #mcrcon
  Mcrcon               = ".\tools\mcrcon\mcrcon.exe"

  #SteamCMD
  SteamCMD             = ".\tools\SteamCMD\steamcmd.exe"

  #Java Directory
  JavaDirectory        = ".\tools\java"

  #Path of the logs folder.
  LogFolder            = ".\logs"

  #Number of days to keep server logs
  Days                 = 30

  #Console Output Text Color
  FgColor              = "Green"

  #Console Output Background Color
  BgColor              = "Black"

  #Console Output Text Color for sections
  SectionColor         = "Blue"

  #Console Output Background Color for sections
  SectionBgColor       = "Black"

  #Pause on errors
  PauseOnErrors        = $false

  #Check for Update Frequency in Minutes
  UpdateCheckFrequency = 15

  #Check if the server is alive Frequency in Minutes
  AliveCheckFrequency  = 5

  #Should be lower or equal to the two above
  TaskCheckFrequency   = 5

  #Lock Timeout in miuntes
  LockTimeout          = 120

  #Max download retries
  MaxDownloadRetries   = 10

  # Define the DateTimeFormat (Change at your own risk, used for filenames)
  DateTimeFormat       = "yyyy-MM-dd_HH-mm-ss"

  # Debug Mode (will not delete any logs or script files and will ignore script locks)
  # !!! DO NOT ENABLE IN PRODUCTION !!!
  Debug                = $false
}

#Create the object
$Global = New-Object -TypeName PsObject -Property $GlobalDetails

Export-ModuleMember -Variable "Global"
