URL = http://schemas.geo.admin.ch/V_D/OeREB/2.0

SCHEMA_FILES = Extract.xsd \
	ExtractData.xsd \
	Versioning.xsd \
	extract.json \
	extractdata.json \
	versioning.json

$(SCHEMA_FILES):
	curl -X GET $(URL)/$@ > $@

clean:
	rm -f $(SCHEMA_FILES)

.PHONY: download
download: $(SCHEMA_FILES)
