# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def user_profile
{
"user":{
"age": 31,
"avatar": "https://d6y8zfzc2qfsl.cloudfront.net/4FA625B0-8DF6-279E-6CB9-3FD11C959D14_profile_100_square.jpg",
"avatar150": "https://d6y8zfzc2qfsl.cloudfront.net/4FA625B0-8DF6-279E-6CB9-3FD11C959D14_profile_150_square.jpg",
"avatar640": "https://d6y8zfzc2qfsl.cloudfront.net/4FA625B0-8DF6-279E-6CB9-3FD11C959D14_profile_640_square.jpg",
"averageDailySteps": 0,
"challengesBeta": true,
"clockTimeDisplayFormat": "12hour",
"corporate": false,
"corporateAdmin": false,
"country": "US",
"customHeartRateZone":{"enabled": false, "max": 0, "min": 0, "name": "Custom Zone"},
"customMaxHeartRate":{
"enabled": false,
"maxHeartRate": 0
},
"dateOfBirth": "1986-04-02",
"displayName": "Ryan T.",
"displayNameSetting": "name",
"distanceUnit": "en_US",
"encodedId": "5SVCG4",
"features":{
"exerciseGoal": true,
"phoneNumberFriendFinding":{
"algorithm": "SHA-256",
"countries":["CN"],
"salt": "UY9M1E70VQE3UAA4"
}
},
"firstName": "Ryan",
"foodsLocale": "en_US",
"fullName": "Ryan Torrance",
"gender": "MALE",
"glucoseUnit": "en_US",
"height": 180.4,
"heightUnit": "en_US",
"languageLocale": "en_US",
"lastName": "Torrance",
"locale": "en_US",
"memberSince": "2017-06-23",
"mfaEnabled": false,
"offsetFromUTCMillis": -25200000,
"sleepTracking": "Normal",
"startDayOfWeek": "SUNDAY",
"strideLengthRunning": 110.80000000000001,
"strideLengthRunningType": "default",
"strideLengthWalking": 74.9,
"strideLengthWalkingType": "default",
"swimUnit": "en_US",
"timezone": "America/Los_Angeles",
"topBadges":[],
"waterUnit": "en_US",
"waterUnitName": "fl oz",
"weight": 86.1,
"weightUnit": "en_US"
}
}
end
