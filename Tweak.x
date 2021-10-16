// Alert
%hook YTCommerceEventGroupHandler
- (void)addEventHandlers {}
%end

// Full-screen
%hook YTInterstitialPromoEventGroupHandler
- (void)addEventHandlers {}
%end

%hook YTIShowFullscreenInterstitialCommand
- (BOOL)shouldThrottleInterstitial { return YES; }
%end

// "Try new features" in settings
%hook YTSettingsSectionItemManager
- (void)updatePremiumEarlyAccessSectionWithEntry:(id)arg1 {}
%end

// Whatever these are for
%hook YTPromoThrottleController
- (BOOL)canShowThrottledPromo { return NO; }
- (BOOL)canShowThrottledPromoWithFrequencyCap:(id)frequencyCap { return NO; }
%end

%hook YTSurveyController
- (void)showSurveyWithRenderer:(id)arg1 surveyParentResponder:(id)arg2 {}
%end