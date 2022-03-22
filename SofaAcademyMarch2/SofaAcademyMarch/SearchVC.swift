import UIKit

class SearchVC: UIViewController {

    let imageView = UIImageView()
    let circle1 = UIImageView()
    let circle2 = UIImageView()
    let circle3 = UIImageView()
    let circle4 = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureImageView()
    }

    func configureImageView() {
        view.addSubview(imageView)
        view.addSubview(circle1)
        view.addSubview(circle2)
        view.addSubview(circle3)
        view.addSubview(circle4)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        circle1.translatesAutoresizingMaskIntoConstraints = false
        circle2.translatesAutoresizingMaskIntoConstraints = false
        circle3.translatesAutoresizingMaskIntoConstraints = false
        circle4.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = .checkmark
        circle1.image = .checkmark
        circle2.image = .checkmark
        circle3.image = .checkmark
        circle4.image = .checkmark
         
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 175),
            imageView.heightAnchor.constraint(equalToConstant: 175),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
     
            circle1.widthAnchor.constraint(equalToConstant: 175),
            circle1.heightAnchor.constraint(equalToConstant: 175),
            circle1.leftAnchor.constraint(equalTo: view.leftAnchor),
            circle1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            circle2.widthAnchor.constraint(equalToConstant: 175),
            circle2.heightAnchor.constraint(equalToConstant: 175),
            circle2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            circle2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            ,
            circle3.widthAnchor.constraint(equalToConstant: 175),
            circle3.heightAnchor.constraint(equalToConstant: 175),
            circle3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            circle3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            circle4.widthAnchor.constraint(equalToConstant: 175),
            circle4.heightAnchor.constraint(equalToConstant: 175),
            circle4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            circle4.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor)
            
            
            
        ])
        
    
        
    
    }
}
