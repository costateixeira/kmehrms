//Profile: TreatmentOrder
//Parent: MedicationRequest


Extension: ExtDosageTime
Description: "Extended dosage timing."
* value[x] only CodeableConcept
* value[x] from BEVSMMedicationLineDayPeriod (required)


Profile: TreatmentLine
Parent: MedicationStatement
* identifier MS
* status MS
* category MS
* medication[x] MS
* subject MS
* effective[x] MS
* dateAsserted MS
* informationSource MS
* derivedFrom MS
* reasonCode MS 
* note MS
//* renderedDosageInstruction MS
* dosage
  * text MS
  * timing MS
  * patientInstruction MS
  * timing MS
    * event MS
    * repeat
      * dayOfWeek MS
      * timeOfDay MS
      * when 0..0 
        * extension contains ExtDosageTime named dosageTime 1..1 MS

      * offset MS

//* adherence MS



Profile: Treatment
Parent: CarePlan




Profile: FHIRDocument
Parent: Bundle

* type = #document
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = true
* entry contains
  composition 1..1 and
  patient 1..1 
* entry[composition].fullUrl 1..1
* entry[composition].resource only Composition
* entry[patient].fullUrl 1..1
* entry[patient].resource only Patient


Profile: FHIRMedList
Parent: FHIRDocument

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = true
* entry contains
  treatmentLine 0..* and 
  treatment 0..* and 
  treatmentOrder 0..*

* entry[treatmentLine].resource only TreatmentLine
* entry[treatment].resource only Treatment
//* entry[treatmentOrder].resource only TreatmentOrder

