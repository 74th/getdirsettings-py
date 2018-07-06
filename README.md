# settingsjson.py

simple setting file getter

## how to use

```sh
pip install settingsjson
```

* write settings to `.settings.json`

```JSON
{
	"DB_PATH": "postgresql://user:seacret@host:port/dbname"
}
```

* read settings from your apps

```py
from sqlalchemy import create_engine
import jsonsettings

settings = jsonsettings.get()
db = create_engine(settings["DB_PATH"])
```

```
echo ".settings.json" >> .gitignore
```