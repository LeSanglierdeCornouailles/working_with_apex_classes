Contact marc = new Contact(FirstName='Marc',
                           LastName='Naouache',
                           Email='mnaouache@salesforce.com',
                           Description='Contact of the day');
insert marc;
// 1. Upsert using an idLookup field
// Create a second sObject variable.
// This variable doesn’t have any ID set.
Contact marc1 = new Contact(FirstName='Marc',
                            LastName='Naouache',  
                            Email='mnaouache@salesforce.com',
                            Description='Prefers to be contacted by email.');
// Upsert the contact by using the idLookup field for matching.
upsert marc1 Contact.fields.Email;
// Verify that the contact has been updated
System.assertEquals('Prefers to be contacted by email.',[SELECT Description FROM Contact WHERE Id=:marc.Id].Description);