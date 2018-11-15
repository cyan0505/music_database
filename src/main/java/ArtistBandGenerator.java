import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class ArtistBandGenerator {

    public ArtistBandGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("artist_band.csv"));
        int counter = 1;

        for (int i = 1; i < 20000; i++) {
            StringBuilder sb = new StringBuilder(i  + "," + counter +  "\n");
            counter++;
            if(counter == 4996){
                counter = 1;
            }
            pw.write(sb.toString());
        }
        pw.close();
    }
}
