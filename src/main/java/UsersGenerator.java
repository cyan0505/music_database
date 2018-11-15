import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Random;

public class UsersGenerator {

    public UsersGenerator() throws FileNotFoundException {
        PrintWriter pw = new PrintWriter(new File("users.csv"));
        Random generator = new Random();

        for (int i = 0; i < 20000; i++) {
            StringBuilder sb = new StringBuilder(generator.nextInt(3)+1 + "," + "nick" + i + "," + "email" + i + "\n");
            pw.write(sb.toString());
        }
        pw.close();
    }
}

