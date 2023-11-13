//Quering adn assigning the values to be delete to a variable.
Contact[] ContactsDeletion = [SELECT id, Name,isDeleted FROM Contact WHERE Email='mnaouache@salesforce.com'];

//DML deletion
delete ContactsDeletion;

