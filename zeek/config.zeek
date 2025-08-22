module FINGERPRINT;

function getenv_bool(var_name: string, default_value: bool) : bool {
    # If the environment variable var_name has a boolean value, then return it.
    # Otherwise, return default_value.
    local var_value : string = getenv(var_name);
    if( var_value == "T" ) return T;
    if( var_value == "F" ) return F;
    return default_value;
}

export {
  option delimiter: string = "_";

  # BSD licensed
  option JA4_enabled:    bool = T;
  option JA4_raw:        bool = F;

  # FoxIO license required for JA4+
  option JA4S_enabled:   bool = T;
  option JA4S_raw:   bool = F;

  option JA4H_enabled:   bool = T;
  option JA4H_raw:   bool = F;

  option JA4L_enabled:   bool = T;
  
  option JA4SSH_enabled: bool = T;

  option JA4T_enabled: bool = T;
  option JA4TS_enabled: bool = T;

  option JA4X_enabled:   bool = F;


  # Allow options to be set by environment variables
  redef JA4_raw = getenv_bool("JA4_raw", JA4_raw);
  redef JA4S_raw = getenv_bool("JA4S_raw", JA4S_raw);
  redef JA4H_raw = getenv_bool("JA4H_raw", JA4H_raw);
}
