import Foundation

final class TrafficLightService {
    func getTrafficLight(colorName: String, callBack: (TrafficLight?) -> Void) {
        let trafficLight = [
            TrafficLight(colorName: "Red", description: "Stop"),
            TrafficLight(colorName: "Green", description: "Go"),
            TrafficLight(colorName: "Yellow", description: "Attention")
        ]

        if let foundTrafficLight = trafficLight.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
