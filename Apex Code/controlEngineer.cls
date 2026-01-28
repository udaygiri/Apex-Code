public class controlEngineer {
    public static void main() {

        // Contact thisContact = new Contact(
        // FirstName = 'Brian',
        // LastName = 'Dent',
        // Phone = '(619) 852-4569',
        // Department = 'Mission Control',
        // Title = 'Mission Specialist - Neptune',
        // Email = 'briandent@trailhead.com');
        // insert thisContact;
        // system.debug('Insert Object');

        String RollName = 'Mission Control';
        List<List<Contact>> conList = [FIND :RollName IN ALL FIELDS RETURNING Contact(FirstName, LastName)];

        for(LIST<Contact> cons:conList){
            for (Contact con : cons){
                System.debug(con.FirstName + con.LastName);
            }

        }
    }

}