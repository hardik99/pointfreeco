func allBlogPosts() -> [BlogPost] {
  let now = Current.date()
  return _allBlogPosts
    .filter {
      Current.envVars.appEnv == .production
        ? $0.publishedAt <= now
        : true
  }
}

private let _allBlogPosts: [BlogPost] = [
  post0001_welcome,
  post0002_episodeCredits,
  post0003_ep14Solutions,
  post0004_overtureSetters,
  post0005_stylingWithFunctions,
  post0006_taggedSecondsAndMilliseconds,
  post0007_openSourcingNonEmpty,
  post0008_conditionalCoding,
  post0009_6moAnniversary,
  post0010_studentDiscounts,
  post0011_solutionsToZipExercisesPt1,
  post0012_solutionsToZipExercisesPt2,
  post0013_solutionsToZipExercisesPt3,
  post0014_openSourcingValidated,
  post0015_overtureNowWithZip
]
