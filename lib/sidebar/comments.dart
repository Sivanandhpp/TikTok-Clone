import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SlidingUpPanel(
        backdropEnabled: true,
        backdropTapClosesPanel: false,
        defaultPanelState: PanelState.OPEN,
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        
      ),
    );
  }
}
