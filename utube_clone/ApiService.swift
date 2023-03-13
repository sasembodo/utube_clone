//
//  ApiService.swift
//  utube_clone
//
//  Created by user on 23/02/23.
//

import Foundation

class ApiService {
    
    private var dataTask: URLSessionDataTask?

    func getListVideo(completion: @escaping (Result <VideoData,Error>) -> Void){

        let listVideoURL = Constrant.API_URL
        
        print(listVideoURL)

        guard let url = URL(string: listVideoURL) else {return}

        dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                completion(.failure(error))
                print("Datatask error: \(error.localizedDescription)")
                return
            }

            guard let response = response as? HTTPURLResponse else {
                print("Empty Responses")
                return
            }
            print("Response Status Code: \(response.statusCode)")

            guard let data = data else {
                print("Empty data")
                return
            }

            do {
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(VideoData.self, from: data)

                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
        }
        dataTask?.resume()
    }
}
