
import simd

public protocol Recognizable {
	associatedtype Id
	
	func id(with id: Id) -> [Id]
}

public struct Interaction<Id>: Recognizable {
	let recognize: (Id) -> [Id]
	
	public init(recognize: @escaping  (Id) -> [Id]) {
		self.recognize = recognize
	}

	public func id(with id: Id) -> [Id] {
		 recognize(id)
	}
}

public func dispatch<T: Recognizable>(recognizer r: inout T, exclude: [T.Id]) -> [T.Id] {
	print("\(r) \(exclude)")
	return []
}
