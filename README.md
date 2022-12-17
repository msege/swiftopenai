# SwiftOpenAI
SDK written for OpenAI API. You can get more details about API from [here](https://beta.openai.com/docs/api-reference/introduction)

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]

## Installation

Add this project on your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/msege/swiftopenai", majorVersion: 0, minor: 0.1)
    ]
)
```

## Configuration
You have to register it before use. Get your token from [api-keys](https://beta.openai.com/account/api-keys)
You can also set your `Organization ID`. You can find your organization id from [settings](https://beta.openai.com/account/org-settings)

```swift
import SwiftOpenAI
SwiftOpenAI.register(token: "YOUR-API-TOKEN", organization: "ORGANIZATION-ID")
```

## Usage of SDK

1. Generate request with related parameters. 
```swift
let request = RetrieveModelRequest(modelName: "text-davinci-003")
```
2. Then either use the rest api in the sdk or create `UrlRequest` and use it your own implementation
```swift
NetworkApi.shared.request(request: request) { result in
    // Handle `result` success/failure cases
    switch result {
    case .success(let data):
    // Data will be from `Request.ResponseType`
    // In that case it will be `RetrieveModelResponse`
        print("Data: \(data)")
    case .failure(let error):
        print("Error: \(error)")
    }
}
```
or

```swift
let urlRequest: URLRequest? = request.urlRequest
// Use `urlRequest` in your own implementation
// You can use `Request.ResponseType` while decoding response.
```

## Supported Endpoints
- Models
    - [List models](https://beta.openai.com/docs/api-reference/models/list)
    - [Retrieve models](https://beta.openai.com/docs/api-reference/models/retrieve)
- Completions
    - [Create completions](https://beta.openai.com/docs/api-reference/completions/create)
- Edits
    - [Create edit](https://beta.openai.com/docs/api-reference/edits/create)
- Images
    - [Create image](https://beta.openai.com/docs/api-reference/images/create)
    - [Create Image edit](https://beta.openai.com/docs/api-reference/images/create-edit)
    - [Create Image variation](https://beta.openai.com/docs/api-reference/images/create-variation)
- Embeddings
    - [Create embeddings](https://beta.openai.com/docs/api-reference/embeddings/create)
- Files
    - [List files](https://beta.openai.com/docs/api-reference/files/list)
    - [Upload file](https://beta.openai.com/docs/api-reference/files/upload)
    - [Delete file](https://beta.openai.com/docs/api-reference/files/delete)
    - [Retrieve file](https://beta.openai.com/docs/api-reference/files/retrieve)
    - [Retrieve file content](https://beta.openai.com/docs/api-reference/files/retrieve-content)
- Fine-tunes (Beta)
    - [Create fine-tune](https://beta.openai.com/docs/api-reference/fine-tunes/create)
    - [List fine-tunes](https://beta.openai.com/docs/api-reference/fine-tunes/list)
    - [Retrieve fine-tune](https://beta.openai.com/docs/api-reference/fine-tunes/retrieve)
    - [Cancel fine-tune](https://beta.openai.com/docs/api-reference/fine-tunes/cancel)
    - [List fine-tune events](https://beta.openai.com/docs/api-reference/fine-tunes/events)
    - [Delete fine-tune model](https://beta.openai.com/docs/api-reference/fine-tunes/delete-model)
- Moderations
    - [Create moderation](https://beta.openai.com/docs/api-reference/moderations/create)

      
## Contact
Sinan Ege – [@sinan_ege](https://twitter.com/sinan_ege) – mehmetsinanege@gmail.com

Distributed under the MIT license. See [LICENSE](https://github.com/msege/swiftopenai/blob/main/Licence) for more information.

[https://github.com/msege/swiftopenai](https://github.com/msege/swiftopenai)

[swift-image]:https://img.shields.io/badge/swift-5.5-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: https://github.com/msege/swiftopenai/blob/main/Licence
[repo-url]: https://github.com/msege/swiftopenai