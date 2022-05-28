class HomeTodayAppModel {
  String? color;
  String? year;
  String? date;
  String? month;
  String? id;
  String? time;
  String? remainTime;


  HomeTodayAppModel(this.color, this.year, this.date, this.month, this.id, this.time, this.remainTime);

  HomeTodayAppModel.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    year = json['year'];
    date = json['date'];
    month = json['month'];
    id = json['id'];
    time = json['time'];
    remainTime = json['remainTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['year'] = year;
    data['date'] = date;
    data['month'] = month;
    data['id'] = id;
    data['time'] = time;
    data['remainTime'] = remainTime;
    return data;
  }
}
