import java.applet.*;
import java.awt.*;

/*<applet code = "PieChart.java" width=500 height=500> 
</applet>*/

public class PieChart extends Applet {
    int[] data_values;
    Color[] data_clr;
    int total;

    // Function to create a data set
    public void init() {
        setBackground(Color.white);
        // Create a data set to represent in pie-chart
        data_values = new int[] { 10, 25, 12, 15, 15, 18, 5 };
        data_clr = new Color[] { Color.red, Color.blue, Color.green, Color.yellow,
                Color.orange, Color.black, Color.white };
    }

    // Function to get the sum of all data values
    public void start() {
        int n = data_values.length;
        int i;
        total = 0;
        for (i = 0; i < n; i++) {
            total += data_values[i];
        }
    }

    // Function to draw the pie chart
    public void paint(Graphics g) {
        int i;
        int start_angle = 0;
        for (i = 0; i < data_values.length; i++) {
            int arc_angle = (int) (data_values[i] * 360 / total);
            g.drawArc(100, 100, 300, 300, start_angle, arc_angle);
            g.setColor(data_clr[i]);
            g.fillArc(100, 100, 300, 300, start_angle, arc_angle);
            start_angle += arc_angle;
        }
    }
}