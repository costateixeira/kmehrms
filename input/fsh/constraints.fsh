Invariant:   duration-xor-endMoment
Description: "Either duration or endMoment MUST be populated, but not both."
Expression: "(duration.exists() or endMoment.exists())"
Severity: #error


