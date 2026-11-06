#if os(iOS)
import Testing
@testable import CmuxMobileShellUI

struct MobileSettingsSectionVisibilityTests {
    @Test func accountBuildShowsEverySection() {
        let sections = MobileSettingsSectionVisibility(isLocalOnly: false)
        #expect(sections.showsIntroduction)
        #expect(sections.showsIrohNetworking)
        #expect(sections.showsPushAlertsAndPrivacy)
    }

    @Test func localOnlyBuildHidesAccountIrohPushAndPrivacy() {
        let sections = MobileSettingsSectionVisibility(isLocalOnly: true)
        #expect(!sections.showsIntroduction)
        #expect(!sections.showsIrohNetworking)
        #expect(!sections.showsPushAlertsAndPrivacy)
    }
}
#endif
