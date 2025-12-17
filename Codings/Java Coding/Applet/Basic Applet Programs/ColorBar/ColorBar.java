import java.awt.*;
import java.applet.*;

/* <applet code="ColorBar.java" height=400 width=400> 
</applet>  */
public class ColorBar extends Applet {
    Color colors[] = { Color.blue, Color.cyan, Color.yellow, Color.red, Color.darkGray,
            Color.gray, Color.lightGray, Color.magenta, Color.orange, Color.pink,
            Color.white, Color.black
    };

    public void paint(Graphics g) {
        Dimension d = getSize();
        int x = d.height / colors.length;
        setBackground(Color.lightGray);
        for (int i = 0; i < colors.length; i++) {
            g.setColor(colors[i]);
            g.fillRect(0, i * x, d.width, (i + 1) * x);
        }
    }
}
