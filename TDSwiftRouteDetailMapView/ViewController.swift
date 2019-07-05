import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: TDSwiftRouteDetailMapView!
    
    @IBAction func routeABtnClicked(_ sender: UIButton) {
        // Config mapview
        mapView.config(config: TDSwiftRouteDetailMapView.defaultConfig, info: TDSwiftRouteDetailMapView.defaultInfo)
        
        // Draw route
        mapView.drawRoute(removeOldRoute: true, completion: nil)
    }
    
    @IBAction func routeBBtnClicked(_ sender: UIButton) {
        // Config mapview
        let routeBConfig = TDSwiftRouteDetailMapViewConfig(sourceTintColor: .blue,
                                                           destinationTintColor: .red,
                                                           routeTintColor: .brown,
                                                           routeLineWidth: 5.0,
                                                           routeDashPhase: 2.0,
                                                           routeDashPattern: [12, 8])
        let defaultInfo = TDSwiftRouteDetailMapViewInfo(sourceTitle: "Swift",
                                                        destinationTitle: "JavaScript",
                                                        sourceLocation: CLLocation(latitude: 33.942161, longitude: -118.421370),
                                                        destinationLocation: CLLocation(latitude: 34.03253, longitude: -118.341))
        mapView.config(config: routeBConfig, info: defaultInfo)
        
        // Draw route
        mapView.drawRoute(removeOldRoute: true, completion: nil)
    }
}
