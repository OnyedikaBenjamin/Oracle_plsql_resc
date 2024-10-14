--------------- POST ---------------------
DECLARE
    v_request  CLOB;
    v_response CLOB;
BEGIN    
    SELECT :body INTO v_request FROM dual;
    
    GC_FHIR_PATIENT_PKG.ADD_PATIENT(v_request, v_response);
   
    owa_util.mime_header('application/json', true);
    htp.prn(v_response);
END;


---------------- GET ----------------------
DECLARE
    v_request CLOB;
    v_response clob;
BEGIN
 --select :body into v_request from dual;
    GC_FHIR_PRACTITIONER_PKG.GET_PRACTITIONER(:uuid,v_response);
    owa_util.mime_header ('application/json', true);
    htp.prn (v_response);
END;
