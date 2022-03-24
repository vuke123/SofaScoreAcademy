import UIKit


class SearchVC: UIViewController {

    private enum CircleSizes{
       static let circleWidth: Double = 175
       static let circleHeight: Double = 175
       static let bottomShift: Double = -20
    }
    
    let imageView = UIImageView()
    let circle1 = UIImageView()
    let circle2 = UIImageView()
    let circle3 = UIImageView()
    let circle4 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubViews()
        translatesAutoresizingMasksIntoConstraints()
        configureImageView()
        setConstraints()
    }

    func addSubViews(){
            view.addSubview(imageView)
            view.addSubview(circle1)
            view.addSubview(circle2)
            view.addSubview(circle3)
            view.addSubview(circle4)
        
    }
    
    func translatesAutoresizingMasksIntoConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        circle1.translatesAutoresizingMaskIntoConstraints = false
        circle2.translatesAutoresizingMaskIntoConstraints = false
        circle3.translatesAutoresizingMaskIntoConstraints = false
        circle4.translatesAutoresizingMaskIntoConstraints = false
        
    }
    func setConstraints(){
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: CircleSizes.circleWidth),
            imageView.heightAnchor.constraint(equalToConstant: CircleSizes.circleHeight),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
     
            circle1.widthAnchor.constraint(equalToConstant: CircleSizes.circleWidth),
            circle1.heightAnchor.constraint(equalToConstant: CircleSizes.circleHeight),
            circle1.leftAnchor.constraint(equalTo: view.leftAnchor),
            circle1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            circle2.widthAnchor.constraint(equalToConstant: CircleSizes.circleWidth),
            circle2.heightAnchor.constraint(equalToConstant: CircleSizes.circleHeight),
            circle2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            circle2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            ,
            circle3.widthAnchor.constraint(equalToConstant: CircleSizes.circleWidth),
            circle3.heightAnchor.constraint(equalToConstant: CircleSizes.circleHeight),
            circle3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: CircleSizes.bottomShift),
            circle3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            circle4.widthAnchor.constraint(equalToConstant: CircleSizes.circleWidth),
            circle4.heightAnchor.constraint(equalToConstant: CircleSizes.circleHeight),
            circle4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: CircleSizes.bottomShift),
            circle4.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
        
            
        ])
    }
    
    func configureImageView() {
        

        imageView.image = .checkmark
        circle1.image = UIImage(systemName: "circle")
        circle1.tintColor = .systemRed
        circle2.image = UIImage(systemName: "circle")
        circle2.tintColor = .systemRed
        circle3.image = UIImage(systemName: "circle")
        circle3.tintColor = .systemRed
        circle4.image = UIImage(systemName: "circle")
        circle4.tintColor = .systemRed
    
    }
}
