//
// Copyright (c) 2016 OnePoint Global Ltd. All rights reserved.
//
// This code is licensed under the OnePoint Global License.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation
import UIKit

class SurveyTableViewCell : UITableViewCell
{
    @IBOutlet weak var lblSurveyName: UILabel!
    @IBOutlet weak var lblSurveyDate: UILabel!
    @IBOutlet weak var lblSurveyDesc: UILabel!
    @IBOutlet weak var imgSurveyIcon: UIImageView!

    func fillCell(_ survey: OPGSurvey)
    {
        self.lblSurveyName.text=survey.surveyName
        self.lblSurveyDesc.text=survey.surveyDescription
        self.lblSurveyDate.text=survey.lastUpdatedDate
    }
}
