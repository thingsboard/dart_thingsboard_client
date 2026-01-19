/// Internal classes
enum Pages {
  home,
  alarms,
  devices,
  customers,
  assets,
  audit_logs,
  notifications,
  device_list,
  dashboards,
  undefined,
}

Pages pagesFromString(String? value) {
  return Pages.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value?.toUpperCase(),
    orElse: () => Pages.undefined,
  );
}

class PageLayout {
  const PageLayout({
    this.id,
    this.label,
    this.icon,
    this.dashboardId,
    this.path,
    this.url,
  });

  final Pages? id;
  final String? label;
  final String? icon;
  final String? dashboardId;
  final String? path;
  final String? url;

  factory PageLayout.fromJson(Map<String, dynamic> json) {
    return PageLayout(
      id: pagesFromString(json['id']),
      label: json['label'],
      icon: json['icon'],
      dashboardId: json['dashboardId'],
      path: json['path'],
      url: json['url'],
    );
  }
}
