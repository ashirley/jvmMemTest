import java.util.LinkedList;
import java.util.List;

class Main {
  public static void main(String[] args) {
    long i = 0;
    try {
      List<byte[]> memHog = new LinkedList<>();
      System.out.println("Starting...");

      while (true) {
        //reserve 1k of memory and keep hold of it.
        byte[] newChunk = new byte[1024];
        memHog.add(newChunk);
        i++;
//        if (i % 1024 == 0) {
//          System.out.print(".");
//        }
      }
    }
    catch (Throwable t) {
//      System.out.println();
      System.out.println("Allocated " + i + " kilobytes before stopping due to: " + t.getClass().getName() + " - " + t.getMessage());
    }
  }
}
