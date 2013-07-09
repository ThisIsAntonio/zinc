private
initializeByteTextConverters
	"Initialize and cache convertors based on specifications in methods that were autogenerated."

	ByteTextConverters := Dictionary new.
	self mappingToIdentifiers
		keysAndValuesDo: [ :mapping :identifiers | 
			| tables |
			tables := self tablesFromSpec: (self perform: mapping).
			identifiers do: [ :each | ByteTextConverters at: each put: tables ] ]