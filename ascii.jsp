import java.io.*;
import java.util.*;

public class AsciiArtToHtml {

    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        int L = in.nextInt();
        int H = in.nextInt();
        in.nextLine(); // Ignore le retour à la ligne
        String T = in.nextLine().toUpperCase();

        String[] asciiRows = new String[H];
        for (int i = 0; i < H; i++) {
            asciiRows[i] = in.nextLine();
        }

        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?";
        StringBuilder[] outputLines = new StringBuilder[H];
        for (int i = 0; i < H; i++) outputLines[i] = new StringBuilder();

        for (char c : T.toCharArray()) {
            int index = alphabet.indexOf(c);
            if (index == -1) index = 26; // Pour les caractères non alphabétiques
            int start = index * L;

            for (int row = 0; row < H; row++) {
                outputLines[row].append(asciiRows[row], start, start + L);
            }
        }

        try (PrintWriter writer = new PrintWriter("ascii_output.html")) {
            writer.println("<!DOCTYPE html>");
            writer.println("<html lang=\"fr\">");
            writer.println("<head>");
            writer.println("<meta charset=\"UTF-8\">");
            writer.println("<title>ASCII Art Output</title>");
            writer.println("<style>");
            writer.println("body { background: #111; color: #0f0; font-family: monospace; padding: 2rem; }");
            writer.println(".ascii { white-space: pre; font-size: 16px; line-height: 1.2; }");
            writer.println("</style>");
            writer.println("</head><body>");
            writer.println("<h1>ASCII Art Output</h1>");
            writer.println("<div class=\"ascii\">");
            for (StringBuilder line : outputLines) {
                writer.println(line.toString());
            }
            writer.println("</div></body></html>");
        }

        System.out.println("✅ Fichier généré : ascii_output.html");
    }
}
