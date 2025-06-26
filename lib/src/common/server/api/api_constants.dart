final class ApiConst {
  const ApiConst._();

  static const Duration connectionTimeout = Duration(minutes: 1);
  static const Duration sendTimeout = Duration(minutes: 1);
  // https://fdp-tgs.uz/shedule/api/allInfo.php

  static const String baseUrl = "https://fdp-tgs.uz";

  static const String version = "/shedule/api";

  static const String getAllInfo = "$version/allInfo.php";
}

final class ApiParams {
  const ApiParams._();

  static Map<String, dynamic> emptyParams() => <String, dynamic>{};

  // static Map<String, dynamic> cabinetSmsCheckParams(
  //         {required String phone, required String code}) =>
  //     <String, dynamic>{
  //       "phone": phone,
  //       "code": code,
  //     };
}
