"""Print an HTSQL database URL for a bound RDS service on cloud.gov.

Extracts the URI from the VCAP_SERVICES environment variable
"""

import json
import os
raw = os.environ['VCAP_SERVICES']
vcap_services = json.loads(raw)
uri = vcap_services['aws-rds'][0]['credentials']['uri']
htsql_url = uri.replace('postgres://', 'pgsql://')
print(htsql_url)
