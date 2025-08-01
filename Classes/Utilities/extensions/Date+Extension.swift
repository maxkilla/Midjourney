//
// Copyright (c) 2025 Related Code - https://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

//-----------------------------------------------------------------------------------------------------------------------------------------------
extension Date {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	init(timestamp: TimeInterval) {

		self.init(timeIntervalSince1970: timestamp)
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func timestamp() -> TimeInterval {

		return self.timeIntervalSince1970
	}
}

//-----------------------------------------------------------------------------------------------------------------------------------------------
extension Date {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	init(timestamp: Int64) {

		let interval = TimeInterval(timestamp) / 1000
		self.init(timeIntervalSince1970: interval)
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	func timestamp() -> Int64 {

		return Int64(self.timeIntervalSince1970 * 1000)
	}
}

//-----------------------------------------------------------------------------------------------------------------------------------------------
extension Date {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	static func year() -> Int {

		let components = Calendar.current.dateComponents([.year], from: Date())

		return components.year!
	}
}
