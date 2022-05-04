import Foundation



class NetworkManger {

    static let shared = NetworkManger()

    private init () {} // create only one instance!

    func getPosition(name: String, completed: @escaping (Result<Location, CustomError>) -> Void) {
        let endpoint: String = "https://www.metaweather.com/api/location/search/?query=" + "\(name.lowercased())"
        print("GET: \(endpoint)")

        guard let url = URL(string: endpoint) else {
//            completed(nil, "Error: URL couldn't be created!")
//            completed(.failure(.i))
            completed(.failure(.invalidResponse))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(.failure(.invalidResponse))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidResponse))
                return
            }

            do {
                let decoder = JSONDecoder() // JSONEncoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let location = try decoder.decode(Location.self, from: data) // bitno!
                completed(.success(location))
            } catch {
                completed(.failure(.invalidResponse))
//                completed(nil, error.localizedDescription)
            }
        }
        task.resume()
    }


}
