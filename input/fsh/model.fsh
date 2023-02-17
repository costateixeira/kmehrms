Logical: KMEHRMS

Description: "KMEHR MedSchema Data Model"
Title: "KMEHR MS"

* KMEHRMessage 1..1 BackboneElement "KMEHR Message"
  * header 1..1 BackboneElement "KMEHR Message header"
  * folder 1..1 BackboneElement "The only data that matters"
    * id-kmehr 1..1 integer "ID-KMEHR"
      * ^requirements = """
        * Equal to 1
        """
      * ^comment = " To Be checked if always 1"
    * patient 1..1 BackboneElement "the patient"
    * MSTransaction 1..1 BackboneElement "The metadata for the message"
      * ^comment = "here is a comment"
      // * id-kmehr 1..1 integer "the KMEHR identifier for the medication line"
      // * ^comment = "S-VALUE= ID-KMEHR"
      // * ^requirements = """
      //     * Sequential, starting from 2
      //   """
      * id-others 0..* integer "Local ID of the medication line"
        * ^requirements = """
        * S-VALUE= LOCAL
        * SL-Value = 'vitalinkuri' - the identifier of the namespace
          * valueset:
            * vitalinkuri
            * RSBID
            * RSWID
        """
      * cd 1..1 code ""
        * ^requirements = """
          * S= CD-TRANSACTION
          * valueset:
            * medicationscheme
        """
      * date 1..1 date "The date when the line was registered in the schema"
        * ^comment = """
        * ?To be checked if mandatory
        * Format= yyyy-mm-dd
        """
      * time 1..1 date "The time when the line was registered in the schema"
        * ^comment = """
        * ?To be checked if mandatory
        * ?Format= hh:mm:ss - To be checked
        """
      * author 1..* BackboneElement "The time when the line was registered in the schema"
        * hcparty-hub 0..1 BackboneElement "the identifier of the hub"
          * id 1..1 string "the hub identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the hub"
            * ^comment = "S-VALUE= CD-HCPARTY"
        * hcparty-org 0..1 BackboneElement "the identifier of the org"
          * id 0..1 string "the org identifier - NIHDII number of the org"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the org"
        * hcparty-individual 1..1 BackboneElement "the identifier of the individual"
          * id-riziv 0..1 string "the RIZIV individual identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
          * id-inss 0..1 string "the Belgian Social Security Number identifier"
            * ^comment = "S-VALUE= INSS"
            * ^example.valueString = "69060733632"
          * cd 1..1 code "the type of the hcparty"
            * ^example.valueString = "persphysician"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * firstname 0..1 string "the first name of the individual"
          * familyname 0..1 string "the last name of the individual"
            * ^example.valueString = "Hendrix"
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * version 1..1 integer "version of the medication scheme"

    * MSETransaction 0..* BackboneElement "The actual lines"
      * id-kmehr 1..1 integer "the KMEHR identifier for the medication line"
        * ^comment = "S-VALUE= ID-KMEHR"
        * ^requirements = """
        * Sequential, starting from 2
        """
      * id-other 0..* string "Local ID of the medication line"
        * ^requirements = """
        * S-VALUE= LOCAL
        * SL-Value = 'vitalinkuri' - the identifier of the namespace
          * valueset:
            * vitalinkuri
            * RSBID
            * RSWID
        """
      * cd 0..* code ""
        * ^requirements = """
        * S= CD-TRANSACTION
        * valueset:
          * medicationschemeelement
          * treatmentsuspension
        """
      * date 1..1 date "The date when the line was registered in the schema"
        * ^comment = """
        * ?To be checked if mandatory
        * Format= yyyy-mm-dd
        """

      * time 1..1 date "The time when the line was registered in the schema"
      * ^comment = """
      * ?To be checked if mandatory
      * ?Format= hh:mm:ss - To be checked
      """
      * author 1..* BackboneElement "The time when the line was registered in the schema"
        * hcparty-hub 0..1 BackboneElement "the identifier of the hub"
          * ^comment = "IS IT USED?"
          * id 1..1 string "the hub identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the hub"
            * ^comment = "S-VALUE= CD-HCPARTY"
        * hcparty-org 0..1 BackboneElement "the identifier of the org"
          * id 0..1 string "the org identifier - NIHDII number of the org"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the org"
        * hcparty-individual 1..1 BackboneElement "the identifier of the individual"
          * id-riziv 0..1 string "the RIZIV individual identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
          * id-inss 0..1 string "the Belgian Social Security Number identifier"
            * ^comment = "S-VALUE= INSS"
            * ^example.valueString = "69060733632"
          * cd 1..1 code "the type of the hcparty"
            * ^example.valueString = "persphysician"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * firstname 0..1 string "the first name of the individual"
          * familyname 0..1 string "the last name of the individual"
            * ^example.valueString = "Hendrix"~
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"



