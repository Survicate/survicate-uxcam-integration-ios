// The Swift Programming Language
// https://docs.swift.org/swift-book

import UXCam
import Survicate

public class SurvicateUXCamIntegration: IntegrationListener {
    public var providerName: String = "uxcam"

    public init() {}

    public func onWillSendAnswer() -> [String : Survicate.IntegrationPayload] {
        guard let url = UXCam.urlForCurrentSession() else { return [:] }

        return ["uxcam_url": .init(url)]
    }

    public func questionAnswered(_ event: QuestionAnsweredEvent) {
        UXCam.logEvent(
            "survicate.Questionanswered",
            withProperties: [
                "answer": event.answer.value ?? "",
                "question": event.question,
                "question_type": event.answer.type,
                "response_uuid": event.responseUUID,
                "survey_id": event.surveyId,
                "survey_name": event.surveyName,
                "visitor_uuid": event.visitorUUID,
                "response_url": event.panelAnswerUrl
            ])
    }
}
