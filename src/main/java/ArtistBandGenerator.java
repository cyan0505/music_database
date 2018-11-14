import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class ArtistBandGenerator {

    public ArtistBandGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("artist_band.csv"));
        int counter = 0;

        for (int i = 0; i < 20000; i++) {
            StringBuilder sb = new StringBuilder(i  + "," + counter +  "\n");
            counter++;
            if(counter == 5000){
                counter = 0;
            }
            pw.write(sb.toString());
        }
        pw.close();
    }
}
