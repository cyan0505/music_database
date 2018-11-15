import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Random;

public class SongGenerator {
    public SongGenerator() throws FileNotFoundException{


        PrintWriter pw = new PrintWriter(new File("song.csv"));
        Random random = new Random();
        int counterBand = 1;
        int counterAlbum = 1;

        for (int i = 1; i < 500000; i++) {
            StringBuilder songLength = new StringBuilder("00:0" + (random.nextInt(6 - 2) + 2)+ ":" + (random.nextInt(50) + 10));
            StringBuilder publishmentYear = new StringBuilder((random.nextInt( 2019 - 1900) + 1900) + "-0" + (random.nextInt(9) + 1) + "-" + (random.nextInt(28 - 10) + 10));
            StringBuilder sb;
            if(i < 50000){
                if(counterBand == 4998){
                    counterBand = 1;
                }
                sb = new StringBuilder(counterBand + "," + "null" + "," + (random.nextInt(9)+1)  + "," + "song_name" + i + "," + songLength + "," + publishmentYear + "\n");
                counterBand++;
            }
            else{
                if(counterBand == 4998){
                    counterBand = 1;
                }               if(counterAlbum == 50000){
                    counterAlbum = 1;
                }
                sb = new StringBuilder(counterBand + "," + counterAlbum + "," + (random.nextInt(9)+1) + "," + "song_name" + i + "," + songLength + "," + publishmentYear + "\n");
                counterBand++;
                counterAlbum++;
            }
            pw.write(sb.toString());
        }        pw.close();
    }
}
