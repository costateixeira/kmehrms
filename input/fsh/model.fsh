Logical: KMEHRMS

Description: "KMEHR MedSchema Data Model"
Title: "KMEHR MS"

* KMEHRMessage 1..1 class "KMEHR Message"
  * header 1..1 class "KMEHR Message header"
    * id 0..1 string ""
    * standard 0..1 class ""
      * cd 0..1 CD "The version of the KMEHR standard used"
        * ^comment = "S-VALUE= CD-STANDARD - value must always be '20161201' "
    * date 0..1 date ""
    * time 0..1 time ""
    * sender 0..1 class ""
      * hcparty-hub 0..1 class "the identifier of the hub"
        * id 1..1 string "the hub identifier"
          * ^comment = "S-VALUE= ID-HCPARTY"
          * ^example.valueString = "1990001916"
        * cd 1..1 code "the type of the hcparty"
          * ^comment = "S-VALUE= CD-HCPARTY"
        * name 0..1 string "the name of the hub"
          * ^comment = "S-VALUE= CD-HCPARTY"
      * hcparty-org 0..1 class "the identifier of the org"
        * id 0..1 string "the org identifier - NIHDII number of the org"
          * ^example.valueString = "1990001916"
        * cd 1..1 code "the type of the hcparty"
          * ^comment = "S-VALUE= CD-HCPARTY"
        * name 0..1 string "the name of the org"
      * hcparty-individual 1..1 class "the identifier of the individual"
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
    * recipient 0..1 class ""
      * hcparty-hub 0..1 class "the identifier of the hub"
        * id 1..1 string "the hub identifier"
          * ^comment = "S-VALUE= ID-HCPARTY"
          * ^example.valueString = "1990001916"
        * cd 1..1 code "the type of the hcparty"
          * ^comment = "S-VALUE= CD-HCPARTY"
        * name 0..1 string "the name of the hub"
          * ^comment = "S-VALUE= CD-HCPARTY"
      * hcparty-org 0..1 class "the identifier of the org"
        * id 0..1 string "the org identifier - NIHDII number of the org"
          * ^example.valueString = "1990001916"
        * cd 1..1 code "the type of the hcparty"
          * ^comment = "S-VALUE= CD-HCPARTY"
        * name 0..1 string "the name of the org"
      * hcparty-individual 1..1 class "the identifier of the individual"
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
  * folder 1..1 class "The only data that matters"
    * id-kmehr 1..1 integer "ID-KMEHR"
      * ^requirements = """
        * Equal to 1
        """
      * ^comment = " To Be checked if always 1"
    * patient 1..1 class "the patient"
    * MSTransaction 1..1 class "The metadata for the message"
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
      * author 1..1 class "The author of the line in the schema"
        * hcparty-hub 0..1 class "the identifier of the hub"
          * id 1..1 string "the hub identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the hub"
            * ^comment = "S-VALUE= CD-HCPARTY"
        * hcparty-org 0..1 class "the identifier of the org"
          * id 0..1 string "the org identifier - NIHDII number of the org"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the org"
        * hcparty-individual 1..1 class "the identifier of the individual"
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
    * MSETransaction-treatmentSuspension 0..* class "The treatment suspension lines"
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
      * author 1..* class "The time when the line was registered in the schema"
        * hcparty-hub 0..1 class "the identifier of the hub"
          * ^comment = "IS IT USED?"
          * id 1..1 string "the hub identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the hub"
            * ^comment = "S-VALUE= CD-HCPARTY"
        * hcparty-org 0..1 class "the identifier of the org"
          * id 0..1 string "the org identifier - NIHDII number of the org"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the org"
        * hcparty-individual 1..1 class "the identifier of the individual"
          * id-riziv 0..1 string "the RIZIV individual identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
          * id-inss 0..1 string "the Belgian Social Security Number identifier"
            * ^comment = "S-VALUE= INSS"
            * ^example.valueString = "69060733632"
          * cd 1..1 code "the type of the hcparty"
            * ^example.valueString = "persphysician"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * firstname 0..1 string "The first name of the individual"
          * familyname 0..1 string "the last name of the individual"
            * ^example.valueString = "Hendrix"
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * item-medication 0..* class "This describes the medication it is linked to, but has no further relevance"
        * id 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* unknown "describes the item category"
          * ^comment = """
          * S = CD-ITEM
          * value = medication
          """
        * beginMoment 1..1 date ""
          * ^comment = """
            * Format= yyyy-mm-dd
            """
        * endMoment 0..1 date "The end moment"
          * ^comment = """
              * Format= yyyy-mm-dd
              """
        * duration 0..1 integer "The duration is mutual exclusive with endMoment"
        * content 0..* class "To Do"
          * medicinalproduct 0..* class "To Do"
            * intendedName 0..1 ST "Name of prescribed product"
            * intendedCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
            * deliveredName 0..1 ST "Name of delivered product"
            * deliveredCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
          * substanceproduct 0..* class "To Do"
            * intendedName 0..1 ST "Name of prescribed product"
            * intendedCd 0..1 CD "Code of prescribed product (INN or CNK)"
              * ^comment = "This has to be CNK, not a substance, because it is a delivered product"
            * deliveredName 0..1 ST "Name of delivered product"
            * deliveredCd 0..1 CD "Code of delivered product (CNK)"
              * ^comment = "This has to be CNK, not a substance, because it is a delivered product"
          * compoundprescription 0..* class "To Do"
            * compoundprescription 0..1 string "description of the compound prescription"
            * name 1..1 ST "Name of the compound prescription"
            * magistraltext 1..1 ST "Recipe of the prescription"
        * text 0..* string "Mandatory if compoundprescription is used"
        * temporality 0..* class "The temporality"
          * cd 0..1 string ""
          * ^requirements = """
          * S = CD-TEMPORALITY
          * valueset:
            * chronic
            * acute
            * oneshot
            """
        * frequency 0..* class "To Do"
          * periodicity 0..* class "To Do"
            * cd 0..* unknown "S-VALUE=CD-PERIODICITY"
        * posology 0..* class "To Do"
          * text 0..* string "To Do"
        * regimen 0..* class "To Do"
          * date 0..* date "date, mostly used icw periodicity=monthly or at a specifiec time of the day"
            * ^comment = """
            * Format= yyyy-mm-dd
            """    
          * weekday 0..* integer "Day of the week, mostly used icw periodicity=weekly"
            * cd 1..1 string "the day of the week"
              * ^comment = "S-VALUE=CD-WEEKDAY"
              * ^example.valueString = "monday"
          * daynumber 0..* integer "Daynumber, mostly used icw periodicity=weekly or daily"
          * daytime 0..* class "indication of the intake moment"
            * time 1..* unknown "Time of the day"
              * ^requirements = """
              * format = HH:MM:SS
              """ 
            * dayperiod 1..* class "To Do"
              * cd 0..* string ""
                * ^requirements = """
                * S = CD-DAYPERIOD
                * valueset:
                  * morning
                  * betweenlunchanddinner
                  * beforesleep
                  * beforebreakfast
                  * ...
                """
          * quantity 1..1 class "To Do"
            * decimal 0..* integer "the amount, expressed in a number"
            * unit 0..* class "the prescribed administration unit where the decimal applies to"
              * cd 0..* string "To Do"
                * ^requirements = """
                * S = CD-ADMINISTRATIONUNIT
                * valueset:
                  * 00001
                  * gm
                  * micrograms
                  * tbl
                  * mg
                  * ...
                """
        * route 0..* class "The drug administration route"
          * cd 0..* unknown "To Do"
            * ^requirements = """
              * S = CD-DRUG-ROUTE
              * valueset:
                * 00060
                * 00001
                * ear-left
                * derm
                * transderm
                * ...
              """
        * instructionforpatient 0..* unknown "To Do"
          * text 0..* unknown "To Do"




    * item-transactionreason 0..1 class "Extra information on the reason of suspention of the linked medication"
      * id 0..* integer "a sequential unique item ID within the transaction, start=1"
      * cd 0..* unknown "describes the item category"
        * ^requirements = """
          * S = CD-ITEM
          * value = transactionreason
          """
      * content-text 0..* class ""
        * text 1..* string "cardinality to be checked"
          * ^comment = "L-VALUE = [language] fr or nl or ..."
          * ^example.valueString = "Temporairement ne pas prendre en raison de l'interaction avec Y."

    * MSETransaction-medication 0..* class "The medication lines"
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
      * author 1..* class "The time when the line was registered in the schema"
        * hcparty-hub 0..1 class "the identifier of the hub"
          * ^comment = "IS IT USED?"
          * id 1..1 string "the hub identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the hub"
            * ^comment = "S-VALUE= CD-HCPARTY"
        * hcparty-org 0..1 class "the identifier of the org"
          * id 0..1 string "the org identifier - NIHDII number of the org"
            * ^example.valueString = "1990001916"
          * cd 1..1 code "the type of the hcparty"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * name 0..1 string "the name of the org"
        * hcparty-individual 1..1 class "the identifier of the individual"
          * id-riziv 0..1 string "the RIZIV individual identifier"
            * ^comment = "S-VALUE= ID-HCPARTY"
          * id-inss 0..1 string "the Belgian Social Security Number identifier"
            * ^comment = "S-VALUE= INSS"
            * ^example.valueString = "69060733632"
          * cd 1..1 code "the type of the hcparty"
            * ^example.valueString = "persphysician"
            * ^comment = "S-VALUE= CD-HCPARTY"
          * firstname 0..1 string "The first name of the individual"
          * familyname 0..1 string "the last name of the individual"
            * ^example.valueString = "Hendrix"
      * isComplete 1..1 boolean "is complete"
        * ^comment = "Always set to true because it is not used"
      * isValidated 1..1 boolean "is validated"
        * ^comment = "Always set to true because it is not used"
      * version 0..* string "TO DO"

      * item-medicationUse 0..1 class "Extra information on the usage of the medication within this transaction"
        * id 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* unknown "describes the item category"
          * ^requirements = """
            * S = CD-ITEM
            * value = healthcareelement
            """
        * content-category 1..* class ""
          * cd 0..* class ""
            * ^requirements = """
            * S-VALUE=CD-ITEM-MS
            * value = medicationuse
            """
        * content-text 0..* class ""
          * text 1..* string "cardinality to be checked"
            * ^comment = "L-VALUE = [language] fr or nl or ..."
            * ^example.valueString = "pression artérielle" 
      * item-medication 0..* class "To Do"
        * id 0..* integer "a sequential unique item ID within the transaction, start=1"
        * cd 0..* unknown "describes the item category"
          * ^comment = """
          * S = CD-ITEM
          * value = medication
          """
        * beginMoment 1..1 date ""
          * ^comment = """
            * Format= yyyy-mm-dd
            """
        * endMoment 0..1 date "The end moment"
          * ^comment = """
              * Format= yyyy-mm-dd
              """
        * duration 0..1 integer "The duration is mutual exclusive with endMoment"
        * content 0..* class "To Do"
          * medicinalproduct 0..* class "To Do"
            * intendedName 0..1 ST "Name of prescribed product"
            * intendedCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
            * deliveredName 0..1 ST "Name of delivered product"
            * deliveredCd 0..1 CD "CD-DRUG-CNK + Code (CNK)"
          * substanceproduct 0..* class "To Do"
            * intendedName 0..1 ST "Name of prescribed product"
            * intendedCd 0..1 CD "Code of prescribed product (INN or CNK)"
              * ^comment = "This has to be CNK, not a substance, because it is a delivered product"
            * deliveredName 0..1 ST "Name of delivered product"
            * deliveredCd 0..1 CD "Code of delivered product (CNK)"
              * ^comment = "This has to be CNK, not a substance, because it is a delivered product"
          * compoundprescription 0..* class "To Do"
            * compoundprescription 0..1 string "description of the compound prescription"
            * name 1..1 ST "Name of the compound prescription"
            * magistraltext 1..1 ST "Recipe of the prescription"
        * text 0..* string "Mandatory if compoundprescription is used"
        * temporality 0..* class "The temporality"
          * cd 0..1 string ""
          * ^requirements = """
          * S = CD-TEMPORALITY
          * valueset:
            * chronic
            * acute
            * oneshot
            """
        * frequency 0..* class "To Do"
          * periodicity 0..* class "To Do"
            * cd 0..* unknown "S-VALUE=CD-PERIODICITY"
        * posology 0..* class "To Do"
          * text 0..* string "To Do"
        * regimen 0..* class "To Do"
          * date 0..* date "date, mostly used icw periodicity=monthly or at a specifiec time of the day"
            * ^comment = """
            * Format= yyyy-mm-dd
            """    
          * weekday 0..* integer "Day of the week, mostly used icw periodicity=weekly"
            * cd 1..1 string "the day of the week"
              * ^comment = "S-VALUE=CD-WEEKDAY"
              * ^example.valueString = "monday"
          * daynumber 0..* integer "Daynumber, mostly used icw periodicity=weekly or daily"
          * daytime 0..* class "indication of the intake moment"
            * time 1..* unknown "Time of the day"
              * ^requirements = """
              * format = HH:MM:SS
              """ 
            * dayperiod 1..* class "To Do"
              * cd 0..* string ""
                * ^requirements = """
                * S = CD-DAYPERIOD
                * valueset:
                  * morning
                  * betweenlunchanddinner
                  * beforesleep
                  * beforebreakfast
                  * ...
                """
          * quantity 1..1 class "To Do"
            * decimal 0..* integer "the amount, expressed in a number"
            * unit 0..* class "the prescribed administration unit where the decimal applies to"
              * cd 0..* string "To Do"
                * ^requirements = """
                * S = CD-ADMINISTRATIONUNIT
                * valueset:
                  * 00001
                  * gm
                  * micrograms
                  * tbl
                  * mg
                  * ...
                """
        * route 0..* class "The drug administration route"
          * cd 0..* unknown "To Do"
            * ^requirements = """
              * S = CD-DRUG-ROUTE
              * valueset:
                * 00060
                * 00001
                * ear-left
                * derm
                * transderm
                * ...
              """
        * instructionforpatient 0..* unknown "To Do"
          * text 0..* unknown "To Do"
          

                

              



