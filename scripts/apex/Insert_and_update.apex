// Create a list of contacts
List<Contact> conList = new List<Contact> {
    new Contact(FirstName='Napoleon1',LastName='Smith',Department='Finance',   Email = 'addemail@domain.com'),
    new Contact(FirstName='Napoleon2',LastName='Smith',Department='Technology',Email = 'addemail@domain.com'),
    new Contact(FirstName='Napoleon3',LastName='Roth',Department='Finance',    Email = 'addemail@domain.com'),
    new Contact(FirstName='Napoleon4',LastName='Shain',Department='Education', Email = 'addemail@domain.com')};

// Bulk insert all contacts with one DML call
insert conList;

// List to hold the new contacts to update
List<Contact> listToUpdate = new List<Contact>();

// Iterate through the list and add a title only if the department is Finance
for(Contact con : conList) {
    if (con.Department == 'Finance') {
        con.Title = 'Financial analyst';
        // Add updated contact sObject to the list.
        listToUpdate.add(con);
    }
}
// Bulk update all contacts with one DML call
update listToUpdate;