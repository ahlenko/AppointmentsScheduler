class SlotConfig {
  final int workingStartMinutes; // у хвилинах від початку доби
  final int workingEndMinutes;
  final List<BreakInterval> breaks;
  final int durationMinutes; // тривалість послуги
  final int stepMinutes; // зазвичай 15
  final List<Appointment> existingAppointments;
  final DateTime? now; // для перевірки "сьогодні"
  final DateTime selectedDate;
  final Appointment? draftAppointment; // новий запис, який ще не збережено

  SlotConfig({
    required this.workingStartMinutes,
    required this.workingEndMinutes,
    required this.breaks,
    required this.durationMinutes,
    this.stepMinutes = 15,
    this.existingAppointments = const [],
    this.now,
    required this.selectedDate,
    this.draftAppointment,
  });
}

class BreakInterval {
  final int startMinutes;
  final int endMinutes;
  final String label;
  BreakInterval(this.startMinutes, this.endMinutes, {this.label = 'Обід'});
}

class Appointment {
  final int startMinutes;
  final int endMinutes;
  final String label;
  Appointment(this.startMinutes, this.endMinutes, {this.label = 'Зайнято'});
}
