//
// Autogenerated by Laurine - by Jiri Trecak ( http://jiritrecak.com, @jiritrecak )
// Do not change this file manually!
//


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Imports

import Foundation


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Loca


public struct Loca {

    /// Base translation: Saturday
    public static var saturday : String = NSLocalizedString("saturday", comment: "")

    /// Base translation: Wednesday
    public static var wednesday : String = NSLocalizedString("wednesday", comment: "")

    /// Base translation: Winter semester
    public static var winterSemester : String = NSLocalizedString("winterSemester", comment: "")

    /// Base translation: Continue
    public static var nextStep : String = NSLocalizedString("nextStep", comment: "")

    /// Base translation: Friday
    public static var friday : String = NSLocalizedString("friday", comment: "")

    /// Base translation: Thursday
    public static var thursday : String = NSLocalizedString("thursday", comment: "")

    /// Base translation: Sa
    public static var saturday_short : String = NSLocalizedString("saturday_short", comment: "")

    /// Base translation: Mo
    public static var monday_short : String = NSLocalizedString("monday_short", comment: "")

    /// Base translation: We
    public static var wednesday_short : String = NSLocalizedString("wednesday_short", comment: "")

    /// Base translation: Loading…
    public static var loading : String = NSLocalizedString("loading", comment: "")

    /// Base translation: Close
    public static var close : String = NSLocalizedString("close", comment: "")

    /// Base translation: Su
    public static var sunday_short : String = NSLocalizedString("sunday_short", comment: "")

    /// Base translation: Sunday
    public static var sunday : String = NSLocalizedString("sunday", comment: "")

    /// Base translation: Yes
    public static var yes : String = NSLocalizedString("yes", comment: "")

    /// Base translation: Attention
    public static var attention : String = NSLocalizedString("attention", comment: "")

    /// Base translation: Tu
    public static var tuesday_short : String = NSLocalizedString("tuesday_short", comment: "")

    /// Base translation: Summer semester
    public static var summerSemester : String = NSLocalizedString("summerSemester", comment: "")

    /// Base translation: Let's go!
    public static var letsgo : String = NSLocalizedString("letsgo", comment: "")

    /// Base translation: Th
    public static var thursday_short : String = NSLocalizedString("thursday_short", comment: "")

    /// Base translation: Tuesday
    public static var tuesday : String = NSLocalizedString("tuesday", comment: "")

    /// Base translation: Cancel
    public static var cancel : String = NSLocalizedString("cancel", comment: "")

    /// Base translation: Fr
    public static var friday_short : String = NSLocalizedString("friday_short", comment: "")

    /// Base translation: Monday
    public static var monday : String = NSLocalizedString("monday", comment: "")


    public struct Onboarding {


        public struct Welcome {

            /// Base translation: View what your professors graded you in your exams.
            public static var GradesDescription : String = NSLocalizedString("Onboarding.Welcome.GradesDescription", comment: "")

            /// Base translation: Welcome to HTW
            public static var Title : String = NSLocalizedString("Onboarding.Welcome.Title", comment: "")

            /// Base translation: See what is being served for lunch in the canteens around you.
            public static var CanteenDescription : String = NSLocalizedString("Onboarding.Welcome.CanteenDescription", comment: "")

            /// Base translation: Your schedule shows you all your lectures.
            public static var ScheduleDescription : String = NSLocalizedString("Onboarding.Welcome.ScheduleDescription", comment: "")

        }

        public struct Studygroup {

            /// Base translation: Not now
            public static var notnow : String = NSLocalizedString("Onboarding.Studygroup.notnow", comment: "")

            /// Base translation: Major
            public static var major : String = NSLocalizedString("Onboarding.Studygroup.major", comment: "")

            /// Base translation: Study group
            public static var title : String = NSLocalizedString("Onboarding.Studygroup.title", comment: "")

            /// Base translation: Year
            public static var year : String = NSLocalizedString("Onboarding.Studygroup.year", comment: "")

            /// Base translation: Group
            public static var group : String = NSLocalizedString("Onboarding.Studygroup.group", comment: "")

            /// Base translation: In order to show you your personal schedule, we need to know what study group you're in.
            public static var body : String = NSLocalizedString("Onboarding.Studygroup.body", comment: "")


            public struct degree {

                /// Base translation: Bachelor
                public static var bachelor : String = NSLocalizedString("Onboarding.Studygroup.degree.bachelor", comment: "")

                /// Base translation: Diploma
                public static var diplom : String = NSLocalizedString("Onboarding.Studygroup.degree.diplom", comment: "")

                /// Base translation: Master
                public static var master : String = NSLocalizedString("Onboarding.Studygroup.degree.master", comment: "")

            }
        }

        public struct UnixLogin {

            /// Base translation: Not now
            public static var notnow : String = NSLocalizedString("Onboarding.UnixLogin.notnow", comment: "")

            /// Base translation: Login
            public static var title : String = NSLocalizedString("Onboarding.UnixLogin.title", comment: "")

            /// Base translation: To be able to view your grades, you have to login using your HTW credentials.
            public static var body : String = NSLocalizedString("Onboarding.UnixLogin.body", comment: "")

        }
    }

    public struct Schedule {

        /// Base translation: No room
        public static var noRoom : String = NSLocalizedString("Schedule.noRoom", comment: "")

        /// Base translation: Today
        public static var today : String = NSLocalizedString("Schedule.today", comment: "")

        /// Base translation: Enjoy your free day!
        public static var freeDay : String = NSLocalizedString("Schedule.freeDay", comment: "")

        /// Base translation: Schedule
        public static var title : String = NSLocalizedString("Schedule.title", comment: "")


        public struct Cell {

            /// Base translation: %02d:%02d
            public static func time(_ value1 : Int, _ value2 : Int) -> String {
                return String(format: NSLocalizedString("Schedule.Cell.time", comment: ""), value1, value2)
            }

        }

        public struct noResults {

            /// Base translation: No plan...
            public static var title : String = NSLocalizedString("Schedule.noResults.title", comment: "")

            /// Base translation: I can't find any lectures for you. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Schedule.noResults.message", comment: "")

        }

        public struct Style {

            /// Base translation: Week
            public static var week : String = NSLocalizedString("Schedule.Style.week", comment: "")

            /// Base translation: List
            public static var list : String = NSLocalizedString("Schedule.Style.list", comment: "")

        }
    }

    public struct Grades {

        /// Base translation: Grades
        public static var title : String = NSLocalizedString("Grades.title", comment: "")

        /// Base translation: (Ø %.2f)
        public static func average(_ value1 : Double) -> String {
            return String(format: NSLocalizedString("Grades.average", comment: ""), value1)
        }


        public struct status {

            /// Base translation: passed
            public static var passed : String = NSLocalizedString("Grades.status.passed", comment: "")

            /// Base translation: failed
            public static var failed : String = NSLocalizedString("Grades.status.failed", comment: "")

            /// Base translation: ultimately failed
            public static var ultimatelyFailed : String = NSLocalizedString("Grades.status.ultimatelyFailed", comment: "")

            /// Base translation: signed up
            public static var signedUp : String = NSLocalizedString("Grades.status.signedUp", comment: "")

        }

        public struct detail {

            /// Base translation: No date
            public static var noDate : String = NSLocalizedString("Grades.detail.noDate", comment: "")

            /// Base translation: No notes
            public static var noNote : String = NSLocalizedString("Grades.detail.noNote", comment: "")

            /// Base translation: %.1f
            public static func mark(_ value1 : Double) -> String {
                return String(format: NSLocalizedString("Grades.detail.mark", comment: ""), value1)
            }

            /// Base translation: %d. try
            public static func tries(_ value1 : Int) -> String {
                return String(format: NSLocalizedString("Grades.detail.tries", comment: ""), value1)
            }

            /// Base translation: %.0f credits
            public static func credits(_ value1 : Double) -> String {
                return String(format: NSLocalizedString("Grades.detail.credits", comment: ""), value1)
            }

        }

        public struct noResults {

            /// Base translation: No grades
            public static var title : String = NSLocalizedString("Grades.noResults.title", comment: "")

            /// Base translation: I can't find any of your grades. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Grades.noResults.message", comment: "")

        }
    }

    public struct Exams {

        /// Base translation: Exams
        public static var title : String = NSLocalizedString("Exams.title", comment: "")


        public struct noResults {

            /// Base translation: I can't find any exams for you. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Exams.noResults.message", comment: "")

            /// Base translation: No exams
            public static var title : String = NSLocalizedString("Exams.noResults.title", comment: "")

        }
    }

    public struct Canteen {

        /// Base translation: Counter not known
        public static var noCounter : String = NSLocalizedString("Canteen.noCounter", comment: "")

        /// Base translation: Canteen
        public static var title : String = NSLocalizedString("Canteen.title", comment: "")


        public struct noResults {

            /// Base translation: No food
            public static var title : String = NSLocalizedString("Canteen.noResults.title", comment: "")

            /// Base translation: I can't find any meals for today.
            public static var message : String = NSLocalizedString("Canteen.noResults.message", comment: "")

        }
    }

    public struct Settings {

        /// Base translation: Settings
        public static var title : String = NSLocalizedString("Settings.title", comment: "")


        public struct items {

            /// Base translation: Do you really want to delete all stored in the HTW app?
            public static var deleteAllConfirmationText : String = NSLocalizedString("Settings.items.deleteAllConfirmationText", comment: "")

            /// Base translation: Delete all stored data
            public static var deleteAll : String = NSLocalizedString("Settings.items.deleteAll", comment: "")


            public struct setSchedule {

                /// Base translation: Change studygroup
                public static var title : String = NSLocalizedString("Settings.items.setSchedule.title", comment: "")

                /// Base translation: (%@/%@/%@)
                public static func subtitle(_ value1 : String, _ value2 : String, _ value3 : String) -> String {
                    return String(format: NSLocalizedString("Settings.items.setSchedule.subtitle", comment: ""), value1, value2, value3)
                }

            }

            public struct setGrades {

                /// Base translation: Change datacenter credentials
                public static var title : String = NSLocalizedString("Settings.items.setGrades.title", comment: "")

                /// Base translation: (%@)
                public static func subtitle(_ value1 : String) -> String {
                    return String(format: NSLocalizedString("Settings.items.setGrades.subtitle", comment: ""), value1)
                }

            }
        }
    }
}