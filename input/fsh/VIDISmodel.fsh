Logical: VIDISMedicationSchema

Description: "VIDIS MedicationSchema Data Model"
Title: "VIDIS MS"

* identifier 0..* II "Identifier of the schema" "Unique identifier for the schema"
* version 1..1 II "Unique version identifier for the schema"
* type 1..1 CD "Type of schema"
* author 1..1 II "Who recorded the entry" "Unique identifier of the person who is responsible for the information content. Should be an NISS or BIS number"
* authoredDate 1..1 DT "date/time when entered"
* patient 1..1 II "Identifier or reference to the patient" "Identifier or reference to the patient. Should be an NISS or BIS number"
* medicationLine 0..* class "A line of medication"
  * uniqueID 1..* II "A unique identifier of the line" "A unique identifier of the line, including the namespace" 
  * status 1..1 CD "The status of the medication treatment entry - active, stopped, entered in error, etc."
  * lifeCycleStatus 1..1 CD "The business state of the treatment - active, stopped, etc."
    * ^binding.valueSet = Canonical(BEVSMMedicationLineStatus)
    * ^binding.strength = #preferred
  * statusReason 0..* CD "Reason for the medication being in the status" "Reason for the medication being in the status - e.g. why not taken, why suspended..."
    * ^binding.valueSet = Canonical(BEVSMMedicationLineStatusReason)
    * ^binding.strength = #preferred
  * recorder 0..1 CD "Who recorded the entry"
  * recordedDate 0..1 DT "date/time when entered"
  * originType 1..1 CD "Where the treatment originated - hospital, ambulatory,..."
    * ^binding.valueSet = Canonical(BEVSMedicationLineOriginType)
    * ^binding.strength = #preferred
  * product 1..1 class "The medicinal product"
    * productCode 0..1 CD "The code of the product, including the type (VMP, CNK, CTIX)"
    * productClass 0..1 CD "The classification of the product e.g. ATC"
    * product 0..1 class "Reference to the defined medication"
    * medType 1..1 CD "The type of medication"
      * ^binding.valueSet = Canonical(BEVSMedicationProductType)
      * ^binding.strength = #preferred
  * treatmentTime 0..1 class "When the treatment is expected to occur"
    * period 0..1 class "The date and time the treatment started/stopped"
      * startDate 0..1 DT "The date and time the treatment started"
      * endDate 0..1 DT "The date and time the treatment stopped"
    * duration 1..1 ST "Duration if exact start/end is not known"
  * relatedCondition 0..* class "The condition that triggered this treatment"
    * conditionCode 0..1 CD "The type of condition that triggered this treatment"
    * conditionReference 0..* class "Reference to the condition defined elsewhere"
  * periodicity 0..1 CD "Frequency of treatment" 
    * ^binding.valueSet = Canonical(BEVSMMedicationLinePeriodicity)
    * ^binding.strength = #preferred
  * dosageAmount 0..1 QT "The dosage amount - number of units to take"
  * dayPeriod 1..1 CD "The time of day When the medication is given"
    * ^binding.valueSet = Canonical(BEVSMMedicationLineDayPeriod)
    * ^binding.strength = #preferred
  * route 0..1 CD "The route of administration"
    * ^binding.valueSet = Canonical(BEVSMedicationAdministrationRoute)
    * ^binding.strength = #preferred
  * instruction 0..* ST "Instruction for the patient"
  * note 0..* ST "Other annotations"
  * reaction 0..* class "Reactions to the medication during this treatment"
  * reaction.date 1..1 DT "The date of the reaction"
  * reaction.type 1..1 CD "The reaction code or text"
  * indication 0..* CD "Indications / conditions for which this medication is given"
  * permission-consent 0..1 CD "Any additional indication of privacy and consent that is explicitly given for this line"
    * ^binding.valueSet = Canonical(BEVSMedicationLineConsent)
    * ^binding.strength = #preferred



CodeSystem: BEMedicationProductType
Id:         BEMedicationProductType
Title:     "Medication Product Type"
Description: "Type of medication product."
* #magistral "Magistral preparation" "Magistral preparation - see definitions"
* #officinal "Oficinal preparation" "Oficinal preparation - see definitions"
* #medicinalproduct "Medicinal product" "Medicinal product - an actual 'branded' product"
* #idmp-mp "IDMP Medicinal Product" "IDMP Medicinal Product - see definitions"
* #pharmaceuticalproduct "medicinal product - see definitions"
* #idmp-php "IDMP Pharmaceutical Product" "IDMP Pharmaceutical Product - see definitions"
* #package "product package" "product package - see definitions"
* #idmp-pp "IDMP Packaged Product" "IDMP Packaged Product - see definitions"
* #vmp-group "VMP Group" "VMP Group - see definitions"

ValueSet: BEVSMedicationProductType
Id: BEVSMedicationProductType
Title: "Medication Product Type"
Description: "Medication Product Type."
* include codes from system BEMedicationProductType



CodeSystem: BEMedicationLineStatus
Id:         BEMedicationLineStatus
Title:     "Medication Product Type"
Description: "Type of medication product."
* #planned "Planned" "Medication is/was planned to be taken"
* #ordered "Ordered" "Medication is prescribed or ordered"
* #delivered "Delivered" "Medication is delivered but there's no information that the patient has started to take it"
* #ongoing "Ongoing" "Medication treatment is ongoing"
* #suspended "Suspended" "Medication treatment is suspended"
* #completed "Completed" "Medication treatment is completed"
* #stopped "Stopped" "Medication treatment is stopped before being completed"


ValueSet: BEVSMMedicationLineStatus
Id: BEVSMMedicationLineStatus
Title: "Medication line - Treatment status"
Description: "Medication line - Treatment status."
* include codes from system BEMedicationLineStatus



CodeSystem: BEMedicationLineStatusReason
Id:         BEMedicationLineStatusReason
Title:     "Medication line - Treatment status"
Description: "Medication line - Treatment status."
* #planned "Planned" "Medication is/was planned to be taken"
* #ordered "Ordered" "Medication is prescribed or ordered"
* #delivered "Delivered" "Medication is delivered but there's no information that the patient has started to take it"
* #ongoing "Ongoing" "Medication treatment is ongoing"
* #suspended "Suspended" "Medication treatment is suspended"
* #completed "Completed" "Medication treatment is completed"
* #stopped "Stopped" "Medication treatment is stopped before being completed"

ValueSet: BEVSMMedicationLineStatusReason
Id: BEVSMMedicationLineStatusReason
Title: "Medication line - Treatment status reason"
Description: "Medication line - Treatment status reason."
* include codes from system BEMedicationLineStatusReason




CodeSystem: BEMedicationLinePeriodicity
Id:         BEMedicationLinePeriodicity
Title:     "Medication line - periodicity"
Description: "Medication line - periodicity."
* #planned "Planned" "Medication is/was planned to be taken"


ValueSet: BEVSMMedicationLinePeriodicity
Id: BEVSMMedicationLinePeriodicity
Title: "Medication line - periodicity"
Description: "Medication line - periodicity."
* include codes from system BEMedicationLinePeriodicity





CodeSystem: BEMedicationLineDayPeriod
Id:         BEMedicationLineDayPeriod
Title:     "Medication line - times of day "
Description: "Medication line - times of day."
* #IC "Between meals" "Between meals"
* #ICM "Between breakfast and lunch" "Between breakfast and lunch"
* #ICD "Between lunch and dinner" "Between lunch and dinner"
* #ICV "Between dinner and hour of sleep" "Between dinner and hour of sleep"


ValueSet: BEVSMMedicationLineDayPeriod
Id: BEVSMMedicationLineDayPeriod
Title: "Medication line - time of day"
Description: "Medication line - time of day."
* include codes from system http://hl7.org/fhir/ValueSet/event-timing
* include codes from system BEMedicationLineDayPeriod




CodeSystem: BEMedicationAdministrationRoute
Id:         BEMedicationAdministrationRoute
Title:     "Medication line - route of administration"
Description: "Medication line - route of administration."


ValueSet: BEVSMedicationAdministrationRoute
Id: BEVSMedicationAdministrationRoute
Title: "Medication line - route of administration"
Description: "Medication line - route of administration."
* include codes from system BEMedicationAdministrationRoute



CodeSystem: BEMedicationLineOriginType
Id:         BEMedicationLineOriginType
Title:     "Medication Line origin type"
Description: "Medication Line origin type."
* #amb-presc "Ambulatory Prescription"
* #hosp-presc "Hospital Prescription"
* #self-medication "Self-medication"
* #pharm-advice "Upon pharmaceutical advice"
* #extra-formulary-prescription "Medication not sold in Belgium, with prescription"
* #extra-formulary-otc "Medication not sold in Belgium, without prescription"


ValueSet: BEVSMedicationLineOriginType
Id: BEVSMedicationLineOriginType
Title: "Medication Line origin type"
Description: "Medication Line origin type Type."
* include codes from system BEMedicationLineOriginType






CodeSystem: BEMedicationLineConsent
Id:         BEMedicationLineConsent
Title:     "Medication Line consent"
Description: "Medication Line consent."
* #consent "Consent" "Patient consents with sharing the information"
* #refuse "Refuse" "Patient doesn't give consent for sharing the information"


ValueSet: BEVSMedicationLineConsent
Id: BEVSMedicationLineConsent
Title: "Medication Line consent"
Description: "Medication Line consent."
* include codes from system BEMedicationLineConsent



/*
* #HS
* #WAKE
* #ACM
* #CM
* #PCM
* #ICM
* #ACD
* #CD
* #PCD
* #ICD
* #ACV
* #CV
* #PCV
* #HS
* #AC
* #C
* #PC
*/
