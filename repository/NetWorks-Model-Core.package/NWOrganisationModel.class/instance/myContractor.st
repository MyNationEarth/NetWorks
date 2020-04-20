contractor access
myContractor
  "Answer the contractor owning this user.
	If the current user is has the Contractor role - lookup which contractor this user belongs to"

  ^ self contractorForUser: self session user inContractors: self contractors