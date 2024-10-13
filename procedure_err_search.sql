SELECT line, position, text
FROM all_errors
WHERE name = 'GC_FHIR_PRACTITIONER_PKG'
AND type = 'PACKAGE BODY';
