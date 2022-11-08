using my.timesheet as timesheet from '../db/data-model';
using ECTimeOff as time from './external/ECTimeOff.csn';

service TimesheetService {
  entity Appointment as projection on timesheet.Appointment;
  entity Person  @readonly as projection on timesheet.Person;
  entity TeamCalendar  @readonly as projection on timesheet.TeamCalendar;
  entity Sanity {
    key ID: String;
  }
  entity EmployeeTime @readonly as projection on time.EmployeeTime;

    //   @readonly
    // entity EmployeeTime    as
    //     select from time.EmployeeTime {
    //         key userId,
    //             approvalStatus,
    //             createdBy,
    //             email,
    //             division,
    //             department,
    //             title
    //     };
}
