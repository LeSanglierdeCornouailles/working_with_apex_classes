try {
    Contact cont = new Contact();
    cont.FirstName ='Picodon';
    insert cont;
} catch(DmlException e) {
    System.debug('Exception is : ' + e.getMessage());
}