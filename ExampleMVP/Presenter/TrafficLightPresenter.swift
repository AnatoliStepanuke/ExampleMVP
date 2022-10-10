import Foundation

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description: String)
}

final class TrafficLightPresenter {
    // MARK: - Constants
    private let trafficLightService: TrafficLightService

    // MARK: - Variables
    weak private var trafficLightViewDelegate: TrafficLightViewDelegate?

    // MARK: - Init
    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }

    // MARK: - Setups
    func setViewDelegate(trafficLightViewDelegate: TrafficLightViewDelegate?) {
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }

    // MARK: - Helpers
    func trafficLightColorSelected(colorName: String) {
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in
            if let traficLight = traficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description)
            }
        }
    }
}
