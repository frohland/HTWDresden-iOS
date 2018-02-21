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

    /// Base translation: Friday
    public static var friday : String = NSLocalizedString("friday", comment: "")

    /// Base translation: Monday
    public static var monday : String = NSLocalizedString("monday", comment: "")

    /// Base translation: Thursday
    public static var thursday : String = NSLocalizedString("thursday", comment: "")

    /// Base translation: Cancel
    public static var cancel : String = NSLocalizedString("cancel", comment: "")

    /// Base translation: Continue
    public static var nextStep : String = NSLocalizedString("nextStep", comment: "")

    /// Base translation: Fr
    public static var friday_short : String = NSLocalizedString("friday_short", comment: "")

    /// Base translation: Mo
    public static var monday_short : String = NSLocalizedString("monday_short", comment: "")

    /// Base translation: We
    public static var wednesday_short : String = NSLocalizedString("wednesday_short", comment: "")

    /// Base translation: Loading…
    public static var loading : String = NSLocalizedString("loading", comment: "")

    /// Base translation: Su
    public static var sunday_short : String = NSLocalizedString("sunday_short", comment: "")

    /// Base translation: Close
    public static var close : String = NSLocalizedString("close", comment: "")

    /// Base translation: Sunday
    public static var sunday : String = NSLocalizedString("sunday", comment: "")

    /// Base translation: OK
    public static var ok : String = NSLocalizedString("ok", comment: "")

    /// Base translation: Yes
    public static var yes : String = NSLocalizedString("yes", comment: "")

    /// Base translation: Summer semester
    public static var summerSemester : String = NSLocalizedString("summerSemester", comment: "")

    /// Base translation: Tu
    public static var tuesday_short : String = NSLocalizedString("tuesday_short", comment: "")

    /// Base translation: Attention
    public static var attention : String = NSLocalizedString("attention", comment: "")

    /// Base translation: Let's go!
    public static var letsgo : String = NSLocalizedString("letsgo", comment: "")

    /// Base translation: Th
    public static var thursday_short : String = NSLocalizedString("thursday_short", comment: "")

    /// Base translation: Tuesday
    public static var tuesday : String = NSLocalizedString("tuesday", comment: "")

    /// Base translation: Sa
    public static var saturday_short : String = NSLocalizedString("saturday_short", comment: "")

    /// Base translation: Winter semester
    public static var winterSemester : String = NSLocalizedString("winterSemester", comment: "")

    /// Base translation: Wednesday
    public static var wednesday : String = NSLocalizedString("wednesday", comment: "")


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

        public struct UnixLogin {

            /// Base translation: To be able to view your grades, you have to login using your HTW credentials.
            public static var body : String = NSLocalizedString("Onboarding.UnixLogin.body", comment: "")

            /// Base translation: Not now
            public static var notnow : String = NSLocalizedString("Onboarding.UnixLogin.notnow", comment: "")

            /// Base translation: Login
            public static var title : String = NSLocalizedString("Onboarding.UnixLogin.title", comment: "")

            /// Base translation: S-Number
            public static var sPlaceholder : String = NSLocalizedString("Onboarding.UnixLogin.sPlaceholder", comment: "")

            /// Base translation: Password
            public static var passwordPlaceholder : String = NSLocalizedString("Onboarding.UnixLogin.passwordPlaceholder", comment: "")

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

            /// Base translation: Select your enrollment year, major and study group here. This information is necessary in order to show you your schedule.
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
    }

    public struct CalendarWeek {

        /// Base translation: CW
        public static var short : String = NSLocalizedString("CalendarWeek.short", comment: "")

        /// Base translation: Calendar week
        public static var long : String = NSLocalizedString("CalendarWeek.long", comment: "")

    }

    public struct Schedule {

        /// Base translation: No room
        public static var noRoom : String = NSLocalizedString("Schedule.noRoom", comment: "")

        /// Base translation: Today
        public static var today : String = NSLocalizedString("Schedule.today", comment: "")

        /// Base translation: Schedule
        public static var title : String = NSLocalizedString("Schedule.title", comment: "")

        /// Base translation: Enjoy your free day! 🎉
        public static var freeDay : String = NSLocalizedString("Schedule.freeDay", comment: "")


        public struct Weeks {

            /// Base translation: Odd weeks
            public static var odd : String = NSLocalizedString("Schedule.Weeks.odd", comment: "")

            /// Base translation: Every week
            public static var all : String = NSLocalizedString("Schedule.Weeks.all", comment: "")

            /// Base translation: Even weeks
            public static var even : String = NSLocalizedString("Schedule.Weeks.even", comment: "")

        }

        public struct Cell {

            /// Base translation: %02d:%02d
            public static func time(_ value1 : Int, _ value2 : Int) -> String {
                return String(format: NSLocalizedString("Schedule.Cell.time", comment: ""), value1, value2)
            }

        }

        public struct Style {

            /// Base translation: Week
            public static var week : String = NSLocalizedString("Schedule.Style.week", comment: "")

            /// Base translation: List
            public static var list : String = NSLocalizedString("Schedule.Style.list", comment: "")

        }

        public struct LectureType {

            /// Base translation: Exercise
            public static var exercise : String = NSLocalizedString("Schedule.LectureType.exercise", comment: "")

            /// Base translation: Lecture
            public static var lecture : String = NSLocalizedString("Schedule.LectureType.lecture", comment: "")

            /// Base translation: Practical
            public static var practical : String = NSLocalizedString("Schedule.LectureType.practical", comment: "")

        }

        public struct noResults {

            /// Base translation: I can't find any lectures for you. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Schedule.noResults.message", comment: "")

            /// Base translation: No plan...
            public static var title : String = NSLocalizedString("Schedule.noResults.title", comment: "")

        }

        public struct Settings {


            public struct Cell {

                /// Base translation: %@: %@–%@
                public static func subtitle(_ value1 : String, _ value2 : String, _ value3 : String) -> String {
                    return String(format: NSLocalizedString("Schedule.Settings.Cell.subtitle", comment: ""), value1, value2, value3)
                }

            }

            public struct Hide {

                /// Base translation: Manage lectures
                public static var title : String = NSLocalizedString("Schedule.Settings.Hide.title", comment: "")

                /// Base translation: Show lecture
                public static var otherAction : String = NSLocalizedString("Schedule.Settings.Hide.otherAction", comment: "")

                /// Base translation: Hide this lecture
                public static var action : String = NSLocalizedString("Schedule.Settings.Hide.action", comment: "")

            }
        }

        public struct NextLecture {

            /// Base translation: No more lectures today! 🚲🌴
            public static var unavailable : String = NSLocalizedString("Schedule.NextLecture.unavailable", comment: "")

        }
    }

    public struct Grades {

        /// Base translation: Grades
        public static var title : String = NSLocalizedString("Grades.title", comment: "")

        /// Base translation: (Ø %.1f)
        public static func average(_ value1 : Double) -> String {
            return String(format: NSLocalizedString("Grades.average", comment: ""), value1)
        }


        public struct status {

            /// Base translation: Passed
            public static var passed : String = NSLocalizedString("Grades.status.passed", comment: "")

            /// Base translation: Failed
            public static var failed : String = NSLocalizedString("Grades.status.failed", comment: "")

            /// Base translation: ultimately failed
            public static var ultimatelyFailed : String = NSLocalizedString("Grades.status.ultimatelyFailed", comment: "")

            /// Base translation: Signed up
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

            /// Base translation: Note: %@
            public static func note(_ value1 : String) -> String {
                return String(format: NSLocalizedString("Grades.detail.note", comment: ""), value1)
            }

            /// Base translation: %.0f credits
            public static func credits(_ value1 : Double) -> String {
                return String(format: NSLocalizedString("Grades.detail.credits", comment: ""), value1)
            }

        }

        public struct noResults {

            /// Base translation: I can't find any of your grades. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Grades.noResults.message", comment: "")

            /// Base translation: No grades
            public static var title : String = NSLocalizedString("Grades.noResults.title", comment: "")

        }
    }

    public struct Exams {

        /// Base translation: Examiner: %@
        public static func examiner(_ value1 : String) -> String {
            return String(format: NSLocalizedString("Exams.examiner", comment: ""), value1)
        }

        /// Base translation: Exams
        public static var title : String = NSLocalizedString("Exams.title", comment: "")

        /// Base translation: Branch: %@
        public static func branch(_ value1 : String) -> String {
            return String(format: NSLocalizedString("Exams.branch", comment: ""), value1)
        }


        public struct noResults {

            /// Base translation: I can't find any exams for you. Have you entered your credentials correctly?
            public static var message : String = NSLocalizedString("Exams.noResults.message", comment: "")

            /// Base translation: No exams
            public static var title : String = NSLocalizedString("Exams.noResults.title", comment: "")

        }

        public struct ExamType {

            /// Base translation: Written
            public static var written : String = NSLocalizedString("Exams.ExamType.written", comment: "")

            /// Base translation: APL
            public static var apl : String = NSLocalizedString("Exams.ExamType.apl", comment: "")

            /// Base translation: Oral
            public static var oral : String = NSLocalizedString("Exams.ExamType.oral", comment: "")

        }

        public struct Cell {

            /// Base translation: %@ – %@
            public static func time(_ value1 : String, _ value2 : String) -> String {
                return String(format: NSLocalizedString("Exams.Cell.time", comment: ""), value1, value2)
            }

        }
    }

    public struct Canteen {

        /// Base translation: Canteens
        public static var pluralTitle : String = NSLocalizedString("Canteen.pluralTitle", comment: "")

        /// Base translation: Canteen
        public static var title : String = NSLocalizedString("Canteen.title", comment: "")

        /// Base translation: Counter not known
        public static var noCounter : String = NSLocalizedString("Canteen.noCounter", comment: "")


        public struct noResults {

            /// Base translation: I can't find any meals for today.
            public static var message : String = NSLocalizedString("Canteen.noResults.message", comment: "")

            /// Base translation: No food
            public static var title : String = NSLocalizedString("Canteen.noResults.title", comment: "")

        }

        public struct Meal {

            /// Base translation: More information
            public static var more : String = NSLocalizedString("Canteen.Meal.more", comment: "")

        }
    }

    public struct Settings {

        /// Base translation: Settings
        public static var title : String = NSLocalizedString("Settings.title", comment: "")

        /// Base translation: Developed in Dresden ❤️
        public static var credits : String = NSLocalizedString("Settings.credits", comment: "")


        public struct items {

            /// Base translation: HTW iOS on GitHub
            public static var github : String = NSLocalizedString("Settings.items.github", comment: "")

            /// Base translation: Delete stored data
            public static var deleteAll : String = NSLocalizedString("Settings.items.deleteAll", comment: "")

            /// Base translation: Do you really want to delete all stored in the HTW app?
            public static var deleteAllConfirmationText : String = NSLocalizedString("Settings.items.deleteAllConfirmationText", comment: "")


            public struct mail {

                /// Base translation: mail@htw.benchr.de
                public static var mail : String = NSLocalizedString("Settings.items.mail.mail", comment: "")

                /// Base translation: Write mail to developer
                public static var title : String = NSLocalizedString("Settings.items.mail.title", comment: "")


                public struct fallback {

                    /// Base translation: It seems like you're not using the system Mail App, so we've added the contact mail address to your clipboard.
                    public static var message : String = NSLocalizedString("Settings.items.mail.fallback.message", comment: "")

                    /// Base translation: Mail address copied!
                    public static var title : String = NSLocalizedString("Settings.items.mail.fallback.title", comment: "")

                }
            }

            public struct legal {

                /// Base translation: Legal notice
                public static var title : String = NSLocalizedString("Settings.items.legal.title", comment: "")

            }

            public struct setSchedule {

                /// Base translation: Change studygroup
                public static var title : String = NSLocalizedString("Settings.items.setSchedule.title", comment: "")

                /// Base translation: %@/%@/%@
                public static func subtitle(_ value1 : String, _ value2 : String, _ value3 : String) -> String {
                    return String(format: NSLocalizedString("Settings.items.setSchedule.subtitle", comment: ""), value1, value2, value3)
                }

            }

            public struct setGrades {

                /// Base translation: %@
                public static func subtitle(_ value1 : String) -> String {
                    return String(format: NSLocalizedString("Settings.items.setGrades.subtitle", comment: ""), value1)
                }

                /// Base translation: Change credentials
                public static var title : String = NSLocalizedString("Settings.items.setGrades.title", comment: "")

            }
        }

        public struct sections {

            /// Base translation: Open-source licenses
            public static var openSource : String = NSLocalizedString("Settings.sections.openSource", comment: "")

            /// Base translation: Your information
            public static var authentication : String = NSLocalizedString("Settings.sections.authentication", comment: "")

            /// Base translation: We are Open Source!
            public static var weAreOpenSource : String = NSLocalizedString("Settings.sections.weAreOpenSource", comment: "")

            /// Base translation: Reset
            public static var deleteAll : String = NSLocalizedString("Settings.sections.deleteAll", comment: "")

            /// Base translation: Contact
            public static var contact : String = NSLocalizedString("Settings.sections.contact", comment: "")

        }
    }
}