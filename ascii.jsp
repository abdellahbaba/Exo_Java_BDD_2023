import java.util.*;

public class AsciiArt {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int L = in.nextInt();
        int H = in.nextInt();
        in.nextLine();

        String T = in.nextLine().toUpperCase();

        String[] asciiRows = new String[H];
        for (int i = 0; i < H; i++) {
            asciiRows[i] = in.nextLine();
            // Vérification : chaque ligne doit avoir 27 * L caractères
            if (asciiRows[i].length() < 27 * L) {
                System.err.println("Erreur : ligne ASCII trop courte !");
                return;
            }
        }

        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?";

        for (int row = 0; row < H; row++) {
            StringBuilder outputLine = new StringBuilder();

            for (char c : T.toCharArray()) {
                int index = alphabet.indexOf(c);
                if (index == -1) index = 26; // caractère inconnu => '?'
                int start = index * L;
                outputLine.append(asciiRows[row], start, start + L);
            }

            System.out.println(outputLine);
        }

        in.close();
    }
}
