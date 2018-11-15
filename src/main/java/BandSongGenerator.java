import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class BandSongGenerator {

    public BandSongGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("band_song.csv"));
        int counter = 1;

        for (int i = 1; i < 500000; i++) {
            StringBuilder sb = new StringBuilder(counter  + "," + i +  "\n");
            counter++;
            if(counter == 4998){
                counter = 1;
            }
            pw.write(sb.toString());
        }
        counter = 1;
        for (int i = 7000; i< 17000; i++){
            StringBuilder sb = new StringBuilder(counter  + "," + i +  "\n");
            counter++;
            if(counter == 4988){
                counter = 1;
            }
            pw.write(sb.toString());
        }
        pw.close();
    }
}
