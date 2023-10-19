/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-19-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class StringArrayTest {
    public static List<string> GenerateStringArray(Integer n){
        List<string> arr = new  List<string>();

        for (Integer i=0;i<n;i++) {
            arr.add('Test '+i);
            System.debug(arr[i]);
        }
        return arr;
    }

}