import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class UsersPlaylistsGenerator {

    public UsersPlaylistsGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("users_playlist.csv"));
        int counter = 1;

        for (int i = 1; i < 20000; i++) {
            StringBuilder sb = new StringBuilder(i  + "," + counter +  "\n");
            counter++;
            if(counter == 5000){
                counter = 1;
            }
            pw.write(sb.toString());
        }
        pw.close();
    }
}

