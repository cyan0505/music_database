import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class PlaylistGenerator {

    public PlaylistGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("playlists.csv"));

        for (int i = 0; i < 5000; i++) {
            StringBuilder sb = new StringBuilder("playlist" + i + "\n");
            pw.write(sb.toString());
        }
        pw.close();
    }
}
