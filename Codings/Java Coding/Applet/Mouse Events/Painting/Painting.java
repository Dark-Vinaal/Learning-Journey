import java.awt.*;
import java.awt.event.*;
import java.applet.*;

/*<applet code="Painting.class" width="300" height="300">   
</applet> */

public class Painting extends Applet implements MouseMotionListener {
    public void init() {
        addMouseMotionListener(this);
        setBackground(Color.blue);
    }

    public void mouseDragged(MouseEvent me) {
        Graphics g = getGraphics();
        g.setColor(Color.white);
        g.fillOval(me.getX(), me.getY(), 5, 5);
    }

    public void mouseMoved(MouseEvent me) {
    }
}
