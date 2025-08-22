module FINGERPRINT;

function getenv_bool(var_name: string, default_value: bool) : bool {
    local var_value : string = getenv(var_name);
    if( var_value == "T" ) return T;
    if( var_value == "F" ) return F;
    return default_value;
}

export {
  option delimiter: string = "_";

  # An option may be changed by editing the T/F value below or by setting
  # an environment variable.

  # BSD licensed
  option JA4_enabled:    bool = getenv_bool("JA4_enabled", T);
  option JA4_raw:        bool = getenv_bool("JA4_raw", F);

  # FoxIO license required for JA4+
  option JA4S_enabled:   bool = getenv_bool("JA4S_enabled", T);
  option JA4S_raw:   bool = getenv_bool("JA4S_raw", F);

  option JA4H_enabled:   bool = getenv_bool("JA4H_enabled", T);
  option JA4H_raw:   bool = getenv_bool("JA4H_raw", F);

  option JA4L_enabled:   bool = getenv_bool("JA4L_enabled", T);
  
  option JA4SSH_enabled: bool = getenv_bool("JA4SSH_enabled", T);

  option JA4T_enabled: bool = getenv_bool("JA4T_enabled", T);
  option JA4TS_enabled: bool = getenv_bool("JA4TS_enabled", T);

  option JA4X_enabled:   bool = getenv_bool("JA4X_enabled", F);
}
