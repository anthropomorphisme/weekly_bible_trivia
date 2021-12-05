

import 'package:weekly_bible_trivia/global/enums.dart';

class UpdateNavigationTabAction {
  final NavigationTab newTab;
  UpdateNavigationTabAction(this.newTab);
}


class NavigateToHomeAction {}

class NavigateBackToHomeAction {}

class NavigateFromHomeToSignInScreenAction {}

class NavigateFromHomeToTableResultsScreenAction {}

class NavigateFromHomeToAboutScreenAction {}

class NavigateFromHomeToEditProfileScreenAction {}

class NavigateFromHomeToMainTriviaScreenAction {}

class NavigateFromHomeToPastTriviaScreenAction {}

class NavigateFromHomeToSearchScreenAction {}

class NavigateFromHomeToSetChapterScreenAction {}

class NavigateFromHomeToSetTranslationScreenAction {}

class NavigateFromSignInToHomeScreenAction {}

class NavigateFromSignInToSignUpScreenAction {}

class NavigateFromSignUpToHomeScreenAction {}

class NavigateFromTableResultsToHomeScreenAction {}

class NavigateFromAboutToHomeScreenAction {}

class NavigateFromEditProfileToHomeScreenAction {}

class NavigateFromMainTriviaToResultScreenAction {}

class NavigateFromPastTriviaToResultScreenAction {}

class NavigateFromResultToHomeScreenAction {}

class NavigateFromSearchToHomeScreenAction {}

class NavigateFromSetChapterToHomeScreenAction {}

class NavigateFromSetTranslationToHomeScreenAction {}