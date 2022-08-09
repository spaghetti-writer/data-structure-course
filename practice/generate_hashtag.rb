def generateHashtag(str)
	str = str.scan(/\w*(?!\s*)?/).map { |e| e.capitalize() if !e.empty? }.join()
	return false if str.length == 0 || str.length >= 140
	hashtag = "#" + str
end

p generateHashtag("Do We have A Hashtag")
p generateHashtag("Codewars")
p generateHashtag(" ")
p generateHashtag("")
p generateHashtag("OrAtAsFromIfWhoWorkToThemTheOnSheAAnyAboutUsOnlyHowIntoEvenNotMeWillCouldNowOtherAnTwoLookFirstDoItWhatSoHeHimJustWayOfButWithYearPeople")
p generateHashtag("WhenHeSoOverTheseGoFromOutAboutHowBeIfTakeHimTimeAOtherAndIntoWouldWithThatCouldBecauseOneItDoItsOnlySomeIn")
p generateHashtag("ForButThenWillSomeOnlyItLikeGoYouTakeMakeSayWouldThisSheTwoGiveByAsFromOfThemItsThereGoodMeComeWhoWhenDoHowWayInOverIfNowThanOutUpOur")
p generateHashtag("NowLookAndOnAnTheyToBackDoThenHerHaveWhoSayWhenNewWorkAsGoodSeeWillOutWhatYouAfterItsIThemIfJustHisOnlyUpItDayNotGetHeTakeThat")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")
p generateHashtag("")

a = ("a"*140) + (" " * 23) +("x" * 12)
p a.scan(/\w*(?!\s*)?/).map { |e| e.capitalize() if !e.empty? }.join()