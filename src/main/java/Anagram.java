import java.util.ArrayList;
import java.util.List;

public class Anagram {

    static int counter = 0;

    public static void main(String[] args) {
        List<String> words = new ArrayList<>();
        words.add("Build");
        words.add("Cat");
        words.add("Bin");
        words.forEach(k -> anagrams("", k));
    }

    public static void anagrams(String string1, String string2) {
        {
            if (string2.length() <= 1) {
                counter++;
                System.out.println(string1 + string2);
            } else {
                for (int i = 0; i < string2.length(); i++) {
                    String x = string2.substring(i, i + 1);
                    String y = string2.substring(0, i);
                    String z = string2.substring(i + 1);
                    anagrams(string1 + x, y + z);
                }
            }
        }
    }
}