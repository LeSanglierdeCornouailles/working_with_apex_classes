// Create a list of Leads
List<Lead> ListLeads = new List<Lead>{
    new Lead(FirstName='Mariana', LastName='Botnari', Email='mbotnari@salesforce.com', Status='Open - Not Contacted'),
    new Lead(FirstName='Mariana', LastName='Botnari', Email='mbotnari@salesforce.com', Status='Open - Not Contacted')
};

// Bulk insert all Leads with one DML call
insert ListLeads;

// List to hold the new leads  to update
List<Lead> ListLeadToUpdate = new List<Lead>();

// Iterate through the list and add a title only if the department is Finance
for(Lead con : ListLeads){
    if (con.Status == 'Open - Not Contacted'){
        con.Industry = 'Education';
        // Add updated contact sObject to the list.
        ListLeadToUpdate.add(con);

    }
}
// Bulk update all leads with one DML call
update ListLeadToUpdate;