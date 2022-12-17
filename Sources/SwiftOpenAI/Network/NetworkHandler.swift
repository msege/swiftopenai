// NetworkHandler.swift
//
// MIT License
//
// Copyright (c) 2022 Sinan Ege
//

import Foundation

public class NetworkApi {
    private init(session: URLSession = .shared) {
        self.session = session
    }

    public static let shared = NetworkApi()

    public func request<T: Request>(request: T, completionHandler: @escaping (Result<T.ResponseType, NetworkError>) -> ()) {
        guard let urlRequest = request.urlRequest else {
            completionHandler(.failure(.invalidRequest))
            return
        }

        session.dataTask(with: urlRequest) { data, _, error in
            if let error = error {
                completionHandler(.failure(.customError(error.localizedDescription)))
            } else if let data = data {
                do {
                    let res = try JSONDecoder().decode(T.ResponseType.self, from: data)

                    completionHandler(.success(res))
                } catch {
                    completionHandler(.failure(.decodingError(error)))
                }
            }
        }.resume()
    }

    private let session: URLSession
}
