import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

/*<applet code="MouseDemo.class" width=400 height=400> 
</applet>*/

public class MouseDemo extends Applet implements MouseListener {
    public void init() {
        addMouseListener(this);
    }

    public void mouseClicked(MouseEvent e) {
        setBackground(Color.white);
        showStatus("Mouse Clicked.....");
        repaint();
    }

    public void mouseEntered(MouseEvent e) {
        setBackground(Color.red);
        showStatus("Mouse Entered....");
        repaint();
    }

    public void mouseExited(MouseEvent e) {
        setBackground(Color.blue);
        showStatus("Mouse Exited....");
        repaint();
    }

    public void mousePressed(MouseEvent e) {
        setBackground(Color.green);
        showStatus("Mouse Pressed....");
        repaint();
    }

    public void mouseReleased(MouseEvent e) {
        setBackground(Color.orange);
        showStatus("Mouse Released....");
        repaint();
    }
}
