RuleSet: hcparties
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
  * id-encryptionActor 0..1 integer "to be checked: usage & cardinality"
    * ^requirements = """
      * S-VALUE = ID-ENCRYPTION-ACTOR
      * value = [selection of you NIHII nr]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^example.valueString = "persphysician"
    * ^comment = "S-VALUE= CD-HCPARTY"
  * cd-encryptionActor 0..1 class "to be checked: usage & cardinality"
    * ^requirements = """
      * valueset: 
        * EHP
        * NIHII
        * SSIN
        *...
    """
  * firstname 0..1 string "the first name of the individual"
  * familyname 0..1 string "the last name of the individual"
    * ^example.valueString = "Hendrix"
  * address 0..* class "Home, work, … address(es) of the pateitn or healthcare party."
    * cd 1..1 class ""
      * ^requirements = """
        * S-VALUE = CD-ADDRESS
        * example.valueString = home
      """
    * nis 0..1 code "explanation: https://nl.wikipedia.org/wiki/NIS-code"
      * ^example.valueString = "24062"
  * telecom 0..* string "Fax, phone, … number(s) of the healthcare party."
* hcparty-application 0..1 class ""
  * id 1..1 string "the software identifier"
    * ^requirements = """
      * S-VALUE = LOCAL
      * SL-VALUE = endusersoftwareinfo
      * value = [received eHealth client-ID to access specific environment]
    """
  * cd 1..1 code "the type of the hcparty"
    * ^requirements = """
      * S-VALUE = CD-HCPARTY
      * value = APPLICATION
    """
RuleSet: medicationIdentification
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
