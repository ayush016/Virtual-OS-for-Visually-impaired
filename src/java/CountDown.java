
import java.util.Timer;
import java.util.TimerTask;


public class CountDown {
    public void st(int x) {
      
        final Timer timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {
            int i = x;
            public void run() {
                System.out.println(i--);
                if (i< 0)
                    timer.cancel();
            }
        }, 0, 1000);
    }
}