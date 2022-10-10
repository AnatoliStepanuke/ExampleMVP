import UIKit

final class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    // MARK: - Constants
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    // MARK: - Outlets
    @IBOutlet weak var descriptionLabel: UILabel!

    // MARK: - Actions
    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }

    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }

    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }

    func displayTrafficLight(description: String) {
        descriptionLabel.text = description
    }
}
