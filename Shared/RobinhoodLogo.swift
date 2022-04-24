//
//  RobinhoodLogoShape.swift
//  Robinhood-Neon
//
//  Created by Joshua Jiang on 4/24/22.
//

import SwiftUI

struct RobinhoodLogo: View {
//    let neonGreen = Color.init(red: 57/255, green: 255/255, blue: 20/255)
//    let black = Color.black
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let now = timeline.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 6) * 30)
            let x = cos(angle.radians)
            
        
            let neonGreen = Color.init(red: 57/255, green: 255/255, blue: 20/255, opacity: x)
            
            Canvas { context, size in
                let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                context.stroke(path(in: frame), with: .color(neonGreen))
            }
            .modifier(NeonEffect(startingColor: neonGreen))
//            .if(show) { view in
//                view.modifier(NeonEffect(startingColor: neonGreen).animation(.easeInOut))
//            }
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.40413*width, y: 0.77064*height))
        path.addLine(to: CGPoint(x: 0.39495*width, y: 0.77336*height))
        path.addCurve(to: CGPoint(x: 0.18553*width, y: 0.83323*height), control1: CGPoint(x: 0.33984*width, y: 0.78697*height), control2: CGPoint(x: 0.25717*width, y: 0.80738*height))
        path.addCurve(to: CGPoint(x: 0.17819*width, y: 0.83868*height), control1: CGPoint(x: 0.18186*width, y: 0.8346*height), control2: CGPoint(x: 0.17819*width, y: 0.83868*height))
        path.addCurve(to: CGPoint(x: 0.17267*width, y: 0.84684*height), control1: CGPoint(x: 0.17635*width, y: 0.8414*height), control2: CGPoint(x: 0.17451*width, y: 0.84412*height))
        path.addCurve(to: CGPoint(x: 0.14879*width, y: 0.89039*height), control1: CGPoint(x: 0.16533*width, y: 0.86045*height), control2: CGPoint(x: 0.15247*width, y: 0.88086*height))
        path.addLine(to: CGPoint(x: 0.14512*width, y: 0.89719*height))
        path.addCurve(to: CGPoint(x: 0.14512*width, y: 0.89991*height), control1: CGPoint(x: 0.14512*width, y: 0.89855*height), control2: CGPoint(x: 0.14512*width, y: 0.89991*height))
        path.addLine(to: CGPoint(x: 0.14696*width, y: 0.90127*height))
        path.addLine(to: CGPoint(x: 0.14879*width, y: 0.90127*height))
        path.addLine(to: CGPoint(x: 0.15798*width, y: 0.89855*height))
        path.addCurve(to: CGPoint(x: 0.22962*width, y: 0.87133*height), control1: CGPoint(x: 0.17819*width, y: 0.89174*height), control2: CGPoint(x: 0.2039*width, y: 0.88086*height))
        path.addLine(to: CGPoint(x: 0.23146*width, y: 0.87133*height))
        path.addCurve(to: CGPoint(x: 0.3729*width, y: 0.82099*height), control1: CGPoint(x: 0.28289*width, y: 0.85364*height), control2: CGPoint(x: 0.33984*width, y: 0.83323*height))
        path.addCurve(to: CGPoint(x: 0.38209*width, y: 0.81419*height), control1: CGPoint(x: 0.3729*width, y: 0.82099*height), control2: CGPoint(x: 0.37841*width, y: 0.81827*height))
        path.addLine(to: CGPoint(x: 0.4078*width, y: 0.77609*height))
        path.addCurve(to: CGPoint(x: 0.4078*width, y: 0.77336*height), control1: CGPoint(x: 0.4078*width, y: 0.77472*height), control2: CGPoint(x: 0.4078*width, y: 0.77336*height))
        path.addCurve(to: CGPoint(x: 0.40413*width, y: 0.77064*height), control1: CGPoint(x: 0.4078*width, y: 0.77064*height), control2: CGPoint(x: 0.40597*width, y: 0.76928*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.19839*width, y: 0.71078*height))
        path.addCurve(to: CGPoint(x: 0.22227*width, y: 0.67676*height), control1: CGPoint(x: 0.20206*width, y: 0.70533*height), control2: CGPoint(x: 0.2186*width, y: 0.6822*height))
        path.addLine(to: CGPoint(x: 0.22227*width, y: 0.6754*height))
        path.addCurve(to: CGPoint(x: 0.6264*width, y: 0.23725*height), control1: CGPoint(x: 0.33432*width, y: 0.51892*height), control2: CGPoint(x: 0.47026*width, y: 0.37196*height))
        path.addLine(to: CGPoint(x: 0.63007*width, y: 0.23317*height))
        path.addCurve(to: CGPoint(x: 0.63007*width, y: 0.22909*height), control1: CGPoint(x: 0.63191*width, y: 0.23181*height), control2: CGPoint(x: 0.63191*width, y: 0.23045*height))
        path.addCurve(to: CGPoint(x: 0.62457*width, y: 0.22773*height), control1: CGPoint(x: 0.62823*width, y: 0.22773*height), control2: CGPoint(x: 0.6264*width, y: 0.22637*height))
        path.addLine(to: CGPoint(x: 0.61722*width, y: 0.22773*height))
        path.addCurve(to: CGPoint(x: 0.30677*width, y: 0.27127*height), control1: CGPoint(x: 0.51434*width, y: 0.23861*height), control2: CGPoint(x: 0.40964*width, y: 0.25222*height))
        path.addCurve(to: CGPoint(x: 0.2884*width, y: 0.27943*height), control1: CGPoint(x: 0.29575*width, y: 0.27399*height), control2: CGPoint(x: 0.29024*width, y: 0.27807*height))
        path.addCurve(to: CGPoint(x: 0.07164*width, y: 0.49306*height), control1: CGPoint(x: 0.21125*width, y: 0.34747*height), control2: CGPoint(x: 0.13961*width, y: 0.41959*height))
        path.addCurve(to: CGPoint(x: 0.07348*width, y: 0.50531*height), control1: CGPoint(x: 0.07348*width, y: 0.49715*height), control2: CGPoint(x: 0.07348*width, y: 0.50531*height))
        path.addCurve(to: CGPoint(x: 0.11389*width, y: 0.67132*height), control1: CGPoint(x: 0.07348*width, y: 0.50531*height), control2: CGPoint(x: 0.09001*width, y: 0.60056*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.97203*height), control1: CGPoint(x: 0.05511*width, y: 0.80059*height), control2: CGPoint(x: 0, y: 0.97203*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.97475*height), control1: CGPoint(x: 0, y: 0.97339*height), control2: CGPoint(x: 0, y: 0.97475*height))
        path.addCurve(to: CGPoint(x: 0.00367*width, y: 0.97611*height), control1: CGPoint(x: 0, y: 0.97611*height), control2: CGPoint(x: 0.00184*width, y: 0.97611*height))
        path.addLine(to: CGPoint(x: 0.03858*width, y: 0.97611*height))
        path.addCurve(to: CGPoint(x: 0.04409*width, y: 0.97339*height), control1: CGPoint(x: 0.04041*width, y: 0.97611*height), control2: CGPoint(x: 0.04225*width, y: 0.97475*height))
        path.addLine(to: CGPoint(x: 0.04592*width, y: 0.96795*height))
        path.addCurve(to: CGPoint(x: 0.16533*width, y: 0.7584*height), control1: CGPoint(x: 0.08083*width, y: 0.89719*height), control2: CGPoint(x: 0.12124*width, y: 0.82644*height))
        path.addCurve(to: CGPoint(x: 0.19839*width, y: 0.71078*height), control1: CGPoint(x: 0.17635*width, y: 0.74343*height), control2: CGPoint(x: 0.19839*width, y: 0.71078*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.67967*width, y: 0.26583*height))
        path.addLine(to: CGPoint(x: 0.67967*width, y: 0.26039*height))
        path.addCurve(to: CGPoint(x: 0.676*width, y: 0.2563*height), control1: CGPoint(x: 0.67967*width, y: 0.25903*height), control2: CGPoint(x: 0.67783*width, y: 0.25767*height))
        path.addCurve(to: CGPoint(x: 0.67048*width, y: 0.25767*height), control1: CGPoint(x: 0.67416*width, y: 0.2563*height), control2: CGPoint(x: 0.67232*width, y: 0.2563*height))
        path.addLine(to: CGPoint(x: 0.66681*width, y: 0.26175*height))
        path.addCurve(to: CGPoint(x: 0.20941*width, y: 0.77881*height), control1: CGPoint(x: 0.48312*width, y: 0.41823*height), control2: CGPoint(x: 0.33065*width, y: 0.5924*height))
        path.addLine(to: CGPoint(x: 0.20574*width, y: 0.7829*height))
        path.addCurve(to: CGPoint(x: 0.20574*width, y: 0.78698*height), control1: CGPoint(x: 0.20574*width, y: 0.78426*height), control2: CGPoint(x: 0.20574*width, y: 0.78562*height))
        path.addCurve(to: CGPoint(x: 0.20941*width, y: 0.78834*height), control1: CGPoint(x: 0.20757*width, y: 0.78834*height), control2: CGPoint(x: 0.20757*width, y: 0.78834*height))
        path.addLine(to: CGPoint(x: 0.21125*width, y: 0.78834*height))
        path.addLine(to: CGPoint(x: 0.21676*width, y: 0.78698*height))
        path.addCurve(to: CGPoint(x: 0.52904*width, y: 0.70534*height), control1: CGPoint(x: 0.31963*width, y: 0.75568*height), control2: CGPoint(x: 0.42433*width, y: 0.72847*height))
        path.addCurve(to: CGPoint(x: 0.54374*width, y: 0.69717*height), control1: CGPoint(x: 0.53455*width, y: 0.70398*height), control2: CGPoint(x: 0.54006*width, y: 0.70126*height))
        path.addCurve(to: CGPoint(x: 0.6962*width, y: 0.50395*height), control1: CGPoint(x: 0.58966*width, y: 0.63186*height), control2: CGPoint(x: 0.6962*width, y: 0.50395*height))
        path.addCurve(to: CGPoint(x: 0.69804*width, y: 0.49579*height), control1: CGPoint(x: 0.69988*width, y: 0.49987*height), control2: CGPoint(x: 0.69804*width, y: 0.49579*height))
        path.addCurve(to: CGPoint(x: 0.67967*width, y: 0.26583*height), control1: CGPoint(x: 0.69804*width, y: 0.49579*height), control2: CGPoint(x: 0.67967*width, y: 0.34339*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.9148*width, y: 0.04539*height))
        path.addCurve(to: CGPoint(x: 0.79173*width, y: 0.01953*height), control1: CGPoint(x: 0.88909*width, y: 0.02906*height), control2: CGPoint(x: 0.85051*width, y: 0.02089*height))
        path.addCurve(to: CGPoint(x: 0.6062*width, y: 0.04403*height), control1: CGPoint(x: 0.74029*width, y: 0.01817*height), control2: CGPoint(x: 0.67783*width, y: 0.0277*height))
        path.addCurve(to: CGPoint(x: 0.57864*width, y: 0.05627*height), control1: CGPoint(x: 0.59517*width, y: 0.04675*height), control2: CGPoint(x: 0.58783*width, y: 0.05083*height))
        path.addCurve(to: CGPoint(x: 0.36923*width, y: 0.21547*height), control1: CGPoint(x: 0.50516*width, y: 0.10662*height), control2: CGPoint(x: 0.43536*width, y: 0.16105*height))
        path.addLine(to: CGPoint(x: 0.36372*width, y: 0.21956*height))
        path.addCurve(to: CGPoint(x: 0.36372*width, y: 0.22364*height), control1: CGPoint(x: 0.36188*width, y: 0.22092*height), control2: CGPoint(x: 0.36188*width, y: 0.22228*height))
        path.addCurve(to: CGPoint(x: 0.36923*width, y: 0.225*height), control1: CGPoint(x: 0.36555*width, y: 0.225*height), control2: CGPoint(x: 0.36739*width, y: 0.22636*height))
        path.addLine(to: CGPoint(x: 0.37657*width, y: 0.22364*height))
        path.addCurve(to: CGPoint(x: 0.69988*width, y: 0.18554*height), control1: CGPoint(x: 0.48495*width, y: 0.20595*height), control2: CGPoint(x: 0.59333*width, y: 0.1937*height))
        path.addCurve(to: CGPoint(x: 0.72008*width, y: 0.18962*height), control1: CGPoint(x: 0.70722*width, y: 0.18554*height), control2: CGPoint(x: 0.71457*width, y: 0.1869*height))
        path.addCurve(to: CGPoint(x: 0.72743*width, y: 0.20323*height), control1: CGPoint(x: 0.72559*width, y: 0.1937*height), control2: CGPoint(x: 0.72743*width, y: 0.19778*height))
        path.addCurve(to: CGPoint(x: 0.73845*width, y: 0.43727*height), control1: CGPoint(x: 0.72559*width, y: 0.28215*height), control2: CGPoint(x: 0.72927*width, y: 0.36107*height))
        path.addLine(to: CGPoint(x: 0.73845*width, y: 0.44271*height))
        path.addCurve(to: CGPoint(x: 0.74213*width, y: 0.44543*height), control1: CGPoint(x: 0.73845*width, y: 0.44407*height), control2: CGPoint(x: 0.74029*width, y: 0.44543*height))
        path.addCurve(to: CGPoint(x: 0.74396*width, y: 0.44543*height), control1: CGPoint(x: 0.74213*width, y: 0.44543*height), control2: CGPoint(x: 0.74212*width, y: 0.44543*height))
        path.addCurve(to: CGPoint(x: 0.74764*width, y: 0.44407*height), control1: CGPoint(x: 0.7458*width, y: 0.44543*height), control2: CGPoint(x: 0.74764*width, y: 0.44543*height))
        path.addLine(to: CGPoint(x: 0.75131*width, y: 0.43999*height))
        path.addCurve(to: CGPoint(x: 0.94603*width, y: 0.25629*height), control1: CGPoint(x: 0.81193*width, y: 0.37604*height), control2: CGPoint(x: 0.87623*width, y: 0.31481*height))
        path.addCurve(to: CGPoint(x: 0.95705*width, y: 0.23997*height), control1: CGPoint(x: 0.95337*width, y: 0.24949*height), control2: CGPoint(x: 0.95521*width, y: 0.24541*height))
        path.addCurve(to: CGPoint(x: 0.9148*width, y: 0.04539*height), control1: CGPoint(x: 0.9791*width, y: 0.14064*height), control2: CGPoint(x: 0.94603*width, y: 0.06444*height))
        path.closeSubpath()
        return path
    }
}


extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct RobinhoodLogo_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            RobinhoodLogo()
                .frame(width: 100, height: 150)
        }
    }
}
