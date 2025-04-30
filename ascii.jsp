import java.util.*;

public class AsciiArt {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int L = in.nextInt(); // Largeur d'une lettre
        int H = in.nextInt(); // Hauteur d'une lettre
        in.nextLine(); // Consomme le retour à la ligne

        String T = in.nextLine().toUpperCase(); // Texte à afficher

        String[] asciiRows = new String[H];
        for (int i = 0; i < H; i++) {
            asciiRows[i] = in.nextLine(); // Lire chaque ligne ASCII
        }

        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?";

        for (int row = 0; row < H; row++) {
            StringBuilder outputLine = new StringBuilder();

            for (char c : T.toCharArray()) {
                int index = alphabet.indexOf(c);
                if (index == -1) {
                    index = 26; // Index du '?'
                }
                int start = index * L;
                outputLine.append(asciiRows[row], start, start + L);
            }

            System.out.println(outputLine);
        }

        in.close();
    }
}
