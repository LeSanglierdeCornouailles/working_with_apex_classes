// Select and assign value to a list
List<Lead> ListOfLead = [SELECT id, name, Status FROM Lead WHERE Status = 'closed - not converted'];

// Iterate through the list and add a title only
for(Lead Iterator : ListOfLead){
    if(Iterator.Status == 'closed - not converted'){
        Iterator.Status = 'Open - not Contacted';
    }
}
// Bulk update all selected lead  with one DML call
update ListOfLead;
