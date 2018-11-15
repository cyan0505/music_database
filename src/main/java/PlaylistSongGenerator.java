import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class PlaylistSongGenerator {

    public PlaylistSongGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("playlist_song.csv"));

        int counterPlaylist = 1;

        for (int i = 257000; i < 500000; i++) {

            if(counterPlaylist == 5000){
                counterPlaylist = 1;
            }
            StringBuilder sb = new StringBuilder(counterPlaylist + ","  + i + "\n");
            counterPlaylist++;
            pw.write(sb.toString());
        }

        counterPlaylist = 1;

        for(int i = 1; i < 257000;i++){
            if(counterPlaylist == 5000){
                counterPlaylist = 1;
            }
            StringBuilder sb = new StringBuilder(counterPlaylist + ","  + i + "\n");
            counterPlaylist++;
            pw.write(sb.toString());
        }
        pw.close();
    }
}
