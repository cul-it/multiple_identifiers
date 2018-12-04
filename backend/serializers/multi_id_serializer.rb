class MultiIdSerializer
    def call(data, xml, fragments, context)
        data.multi_identifiers.each do |ids|
            xml.unitid( ids["identifier_value"], :type => ids["identifier_type"] )
        end
    end
end