import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class BandGenerator {
    public BandGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("band.csv"));

        for (int i = 0; i < 5000; i++) {
            System.out.println(i);
            StringBuilder sb = new StringBuilder("band" + i + "\n");
            pw.write(sb.toString());
        }
        pw.close();
    }
}
