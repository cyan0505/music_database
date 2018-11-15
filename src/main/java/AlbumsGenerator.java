import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class AlbumsGenerator {

    public AlbumsGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("albums.csv"));
        int counterAlbum = 0;
        int counterBand = 0;

        for (int i = 0; i < 50000; i++) {
            if(i == 10){
                counterAlbum = 0;
            }
            if(counterBand == 5000){
                counterBand = 0;
            }
            StringBuilder sb = new StringBuilder(counterBand + "," + "album_name" + counterAlbum + "\n");
            counterAlbum++;
            counterBand++;
            pw.write(sb.toString());
        }
        pw.close();
    }
}
