import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;


public class ArtistGenerator{

    public ArtistGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("test.csv"));

        for (int i = 0; i < 20000; i++) {
            StringBuilder sb = new StringBuilder("Adam" + i + "," + "Kowalski" + i + "\n");
            pw.write(sb.toString());
        }
    }
}