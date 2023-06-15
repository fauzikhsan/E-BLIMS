String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 10) {
    return 'New adventures begin! 🌅';
  }
  if (hour < 15) {
    return 'Time to shine! 🌤';
  }
  if (hour < 18) {
    return 'Seize the day 🌥';
    //nikmati hari
  }

  return 'Evening 🌜';
}
