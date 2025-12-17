import java.applet.*;
import java.awt.*;

/*<applet code="Layoutdemo.class" width=400 height=400> 
</applet>*/

public class Layoutdemo extends Applet {
    public void init() {
        setLayout(new BorderLayout());

        Button topButton = new Button("Top");
        add(topButton, BorderLayout.NORTH);

        Button bottomButton = new Button("Bottom");
        add(bottomButton, BorderLayout.SOUTH);

        Button rightButton = new Button("Right");
        add(rightButton, BorderLayout.EAST);

        Button leftButton = new Button("Left");
        add(leftButton, BorderLayout.WEST);

        Button middleButton = new Button("Middle");
        add(middleButton, BorderLayout.CENTER);
    }
}