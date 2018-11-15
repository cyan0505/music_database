import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class BandSongGenerator {

    public BandSongGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("band_song.csv"));
        int counter = 0;

        for (int i = 0; i < 500000; i++) {
            StringBuilder sb = new StringBuilder(counter  + "," + i +  "\n");
            counter++;
            if(counter == 5000){
                counter = 0;
            }
            pw.write(sb.toString());
        }
        counter = 0;
        for (int i = 7000; i< 17000; i++){
            StringBuilder sb = new StringBuilder(counter  + "," + i +  "\n");
            counter++;
            if(counter == 5000){
                counter = 0;
            }
            pw.write(sb.toString());
        }
        pw.close();
    }
}
