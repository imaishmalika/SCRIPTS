net start winRM
get-service winRM
winrm e winrm/config/listener
winrm get winrm/config
winrm enumerate winrm/config/listener