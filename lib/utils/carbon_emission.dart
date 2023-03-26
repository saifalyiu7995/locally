import 'dart:math';

// Constants for carbon emissions
const double CARBON_EMISSION_PER_KM_CAR = 0.12; // in kgCO2e/km
const double CARBON_EMISSION_PER_KM_BIKE = 0.02; // in kgCO2e/km
const double CARBON_EMISSION_PER_KM_BUS = 0.03; // in kgCO2e/km
const double CARBON_EMISSION_PER_KM_TRAIN = 0.04; // in kgCO2e/km
const double CARBON_EMISSION_PER_KM_PLANE = 0.28; // in kgCO2e/km

// Ellipsoid model constants (WGS84)
const double EARTH_RADIUS_KM = 6371.01;
const double EARTH_FLATTENING = 1 / 298.257223563;

// Calculates the distance between two latlng points using the Haversine formula
double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  final double dLat = (lat2 - lat1) * pi / 180;
  final double dLon = (lon2 - lon1) * pi / 180;
  final double a = pow(sin(dLat / 2), 2) +
      cos(lat1 * pi / 180) * cos(lat2 * pi / 180) * pow(sin(dLon / 2), 2);
  final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  final double distance = EARTH_RADIUS_KM * c;
  return distance;
}

// Calculates carbon emissions for a given distance and mode of transportation
double calculateCarbonEmissions(double distance, String modeOfTransport) {
  double carbonEmissionPerKm = 0.0;

  // Set the carbon emission per km based on the mode of transportation
  switch (modeOfTransport) {
    case 'car':
      carbonEmissionPerKm = CARBON_EMISSION_PER_KM_CAR;
      break;
    case 'bike':
      carbonEmissionPerKm = CARBON_EMISSION_PER_KM_BIKE;
      break;
    case 'bus':
      carbonEmissionPerKm = CARBON_EMISSION_PER_KM_BUS;
      break;
    case 'train':
      carbonEmissionPerKm = CARBON_EMISSION_PER_KM_TRAIN;
      break;
    case 'Air':
      carbonEmissionPerKm = CARBON_EMISSION_PER_KM_PLANE;
      break;
    default:
      throw Exception('Invalid mode of transport');
  }

  // Calculate the carbon emissions based on the distance and carbon emission per km
  final double carbonEmission = carbonEmissionPerKm * distance;
  return carbonEmission;
}

// void main() {
//   // Example usage
//   final double lat1 = 52.520008;
//   final double lon1 = 13.404954;
//   final double lat2 = 51.507351;
//   final double lon2 = -0.127758;
//   final double distance = calculateDistance(lat1, lon1, lat2, lon2);
//   final double carbonEmission = calculateCarbonEmissions(distance, 'train');
//   print('Distance: ${distance.toString()}');

// }

// import 'dart:math';


// int computeFormCD(double lat1, double lat2, double lon1, double lon2) {
//   double dc, d;
//   double argacos, a, invf;

//   lat1 = (pi / 180) * lat1;
//   lat2 = (pi / 180) * lat2;
//   lon1 = (pi / 180) * lon1;
//   lon2 = (pi / 180) * lon2;

//   dc = GeoUtils.dconv(0); // get distance conversion factor
//   Ellipsoid ellipse = GeoUtils.getEllipsoid(0); // get ellipse
//   // showProps(ellipse,"ellipse")

//   if (ellipse.name == "Sphere") {
//     // spherical code
//     var cd = crsdist(lat1, lon1, lat2, lon2); // compute crs and distance
//     d = cd.d * (180 / pi) * 60 * dc; // go to physical units
//   } else {
//     // elliptic code
//     var cde = crsdist_ell(lat1, -lon1, lat2, -lon2, ellipse); // ellipse uses East negative
//     d = cde.d * dc; // go to physical units
//   }

//   // alert("d="+d+"  crs12="+crs12+"   crs21="+crs21)
//   return d.round();
// }

// List<double> crsdist(double lat1, double lon1, double lat2, double lon2) {
//   /* compute course and distance (spherical) */

//   if ((lat1 + lat2 == 0.0) &&
//       ((lon1 - lon2).abs() == pi) &&
//       ((lat1).abs() != (pi / 180) * 90.0)) {
//     throw Exception("Course between antipodal points is undefined");
//   }

//   double d = acos(sin(lat1) * sin(lat2) + cos(lat1) * cos(lat2) * cos(lon1 - lon2));

//   return [d];
// }


// class Ellipse {
//   final double a;
//   final double invf;
  
//   Ellipse({required this.a, required this.invf});
// }

// // class CrsDistOutput {
// //   final double d;
  
// //   CrsDistOutput({required this.d});
// // }
// // class Ellipse {
// //   double a;
// //   double invf;
// //   Ellipse({required this.a, required this.invf});
// // }

// class CRSOutput {
//   double d;
//   CRSOutput({required this.d});
// }

// CRSOutput crsdistEll(
//   double glat1,
//   double glon1,
//   double glat2,
//   double glon2,
//   Ellipse ellipse,
// ) {
//   double a = ellipse.a;
//   double f = 1 / ellipse.invf;
//   double r, tu1, tu2, cu1, su1, cu2, s1, b1, f1;
//   double x, sx, cx, sy, cy, y, sa, c2a, cz, e, c, d;
//   double EPS = 0.00000000005;
//   double faz, baz, s;
//   int iter = 1;
//   int MAXITER = 100;
//   if ((glat1 + glat2 == 0.0) && (glon1 - glon2).abs() == pi) {
//     throw ArgumentError("Course and distance between antipodal points is undefined");
//     glat1 = glat1 + 0.00001; // allow algorithm to complete
//   }
//   if (glat1 == glat2 && ((glon1 - glon2).abs() == 0 || (glon1 - glon2).abs() - 2 * pi) < EPS) {
//     throw ArgumentError("Points 1 and 2 are identical- course undefined");
//   }
//   r = 1 - f;
//   tu1 = r * tan(glat1);
//   tu2 = r * tan(glat2);
//   cu1 = 1 / sqrt(1 + tu1 * tu1);
//   su1 = cu1 * tu1;
//   cu2 = 1 / sqrt(1 + tu2 * tu2);
//   s1 = cu1 * cu2;
//   b1 = s1 * tu2;
//   f1 = b1 * tu1;
//   x = glon2 - glon1;
//   d = x + 1; // force one pass
//   while ((d - x).abs() > EPS && iter < MAXITER) {
//     iter = iter + 1;
//     sx = sin(x);
//     cx = cos(x);
//     tu1 = cu2 * sx;
//     tu2 = b1 - su1 * cu2 * cx;
//     sy = sqrt(tu1 * tu1 + tu2 * tu2);
//     cy = s1 * cx + f1;
//     y = atan2(sy, cy);
//     sa = s1 * sx / sy;
//     c2a = 1 - sa * sa;
//     cz = f1 + f1;
//     if (c2a > 0) cz = cy - cz / c2a;
//     e = cz * cz * 2 - 1;
//     c = ((-3 * c2a + 4) * f + 4) * c2a * f / 16;
//     d = x;
//     x = ((e * cy * c + cz) * sy * c + y) * sa;
//     x = (1 - c) * x * f + glon2 - glon1;
//   }
//   faz = modcrs(atan2(tu1, tu2));
//   baz = modcrs(atan2(cu1 * sx, b1 * cx - su1 * cu2) + pi);
//   x = sqrt
// }


// void computeFormDir(double lat1, double lon1, double d12) {
//   double dc;
//   double a, invf;

//   /* Input and validate data */
//   lat1 = (pi / 180) * lat1;
//   lon1 = (pi / 180) * lon1;

//   dc = GeoUtils.dconv(0); /* get distance conversion factor */
//   d12 /= dc; // in nm
//   //alert("dc=" +dc)

//   //alert("lat1="+lat1+" lon1="+lon1+" d12="+d12+" crs12="+crs12)

//   var ellipse = GeoUtils.getEllipsoid(0); //get ellipse
//   //showProps(ellipse,"ellipse")

//   if (ellipse.name == "Sphere") {
//     // spherical code
//     d12 /= (180 * 60 / pi); // in radians
//   }

//   //alert("d="+d+"  crs12="+crs12+"   crs21="+crs21)

//   var lat2s = degtodm(sin(lat2).abs(), decpl);
//   //document.OutputFormDir.lat2.value=lat2s
//   var lon2s = degtodm(sin(lon2).abs(), decpl);
//   //document.OutputFormDir.lon2.value=lon2s
// }


// Map<String, double> direct(double lat1, double lon1, double crs12, double d12) {
//   final EPS = 0.00000000005;
//   double dlon, lat, lon;

//   // 5/16 changed to "long-range" algorithm
//   if ((cos(lat1).abs() < EPS) && !(sin(crs12).abs() < EPS)) {
//     print("Only N-S courses are meaningful, starting at a pole!");
//   }

//   lat = asin(sin(lat1) * cos(d12) + cos(lat1) * sin(d12) * cos(crs12));
//   if (cos(lat).abs() < EPS) {
//     lon = 0; // endpoint a pole
//   } else {
//     dlon = atan2(sin(crs12) * sin(d12) * cos(lat1),
//         cos(d12) - sin(lat1) * sin(lat));
//     lon = (lon1 - dlon + pi) % (2 * pi) - pi;
//   }

//   final out = <String, double>{};
//   out['lat'] = lat;
//   out['lon'] = lon;
//   return out;
// }


// class Ellipse {
//   late double a, invf;
// }

// List<double> directEll(double glat1, double glon1, double faz, double s, Ellipse ellipse) {
//   final EPS = 0.00000000005;
//   double r, tu, sf, cf, b, cu, su, sa, c2a, x, c, d, y, sy=0, cy=0, cz=0, e=0;
//   double glat2, glon2, baz, f=0;

//   if ((cos(glat1).abs() < EPS) && !(sin(faz).abs() < EPS)) {
//     throw Exception('Only N-S courses are meaningful, starting at a pole!');
//   }

//   final a = ellipse.a;
//   f = 1 / ellipse.invf;
//   r = 1 - f;
//   tu = r * tan(glat1);
//   sf = sin(faz);
//   cf = cos(faz);
//   if (cf == 0) {
//     b = 0.0;
//   } else {
//     b = 2 * atan2(tu, cf);
//   }
//   cu = 1 / sqrt(1 + tu * tu);
//   su = tu * cu;
//   sa = cu * sf;
//   c2a = 1 - sa * sa;
//   x = 1 + sqrt(1 + c2a * (1 / (r * r) - 1));
//   x = (x - 2) / x;
//   c = 1 - x;
//   c = (x * x / 4 + 1) / c;
//   d = (0.375 * x * x - 1) * x;
//   tu = s / (r * a * c);
//   y = tu;
//   c = y + 1;
//   while ((y - c).abs() > EPS) {
//     sy = sin(y);
//     cy = cos(y);
//     cz = cos(b + y);
//     e = 2 * cz * cz - 1;
//     c = y;
//     x = e * cy;
//     y = e + e - 1;
//     y = (((sy * sy * 4 - 3) * y * cz * d / 6 + x) * d / 4 - cz) * sy * d + tu;
//   }

//   b = cu * cy * cf - su * sy;
//   c = r * sqrt(sa * sa + b * b);
//   d = su * cy + cu * sy * cf;
//   glat2 = modlat(atan2(d, c));
//   c = cu * cy - su * sy * cf;
//   x = atan2(sy * sf, c);
//   c = ((-3 * c2a + 4) * f + 4) * c2a * f / 16;
//   d = ((e * cy * c + cz) * sy * c + y) * sa;
//   glon2 = modlon(glon1 + x - (1 - c) * d * f); // fix date line problems
//   baz = GeoUtils().modcrs(atan2(sa, b) + pi);

//   return [glat2, glon2];
// }

// double modlat(double x) {
//   return ((x + pi / 2) % pi) - pi / 2;
// }

// double modlon(double x) {
//   return ((x + pi) % (2 * pi)) - pi;
// }



// class Ellipsoid {
//   String name;
//   double a;
//   double invf;

//   Ellipsoid(this.name, this.a, this.invf);
// }

// class GeoUtils {
//   static List<double> makeArray(int n) {
//     List<double> arr = List<double>.filled(n + 1, 0);
//     arr[0] = n.toDouble();
//     for (int i = 1; i <= n; i++) {
//       arr[i] = 0;
//     }
//     return arr;
//   }

//   static double dconv(int selection) {
//     List<double> dc = makeArray(3);
//     dc[1] = 1.0;
//     dc[2] = 1.852; //km
//     dc[3] = 185200.0 / 160934.40; // 1.150779448 sm
//     dc[4] = 185200.0 / 30.48; // 6076.11549 ft
//     return dc[selection + 1];
//   }

//   static Ellipsoid getEllipsoid(int selection) {
//     int noSelections = 10;
//     List<Ellipsoid> ells = makeArray(noSelections).cast<Ellipsoid>();
//     ells[1] = Ellipsoid("Sphere", 180 * 60 / 3.1415926535897932, double.infinity);
//     ells[2] = Ellipsoid("WGS84", 6378.137 / 1.852, 298.257223563);
//     ells[3] = Ellipsoid("NAD27", 6378.2064 / 1.852, 294.9786982138);
//     ells[4] = Ellipsoid("International", 6378.388 / 1.852, 297.0);
//     ells[5] = Ellipsoid("Krasovsky", 6378.245 / 1.852, 298.3);
//     ells[6] = Ellipsoid("Bessel", 6377.397155 / 1.852, 299.1528);
//     ells[7] = Ellipsoid("WGS72", 6378.135 / 1.852, 298.26);
//     ells[8] = Ellipsoid("WGS66", 6378.145 / 1.852, 298.25);
//     ells[9] = Ellipsoid("FAI sphere", 6371.0 / 1.852, 1000000000.0);
//     ells[10] = Ellipsoid("User", 0.0, 0.0);
//     return ells[1];
//   }

//   double parselatlon(String instr) {
//   // Parse strings dd.dd dd:mm.mm dd:mm:ss.ss
//   double deg, min, sec;
//   int colonIndex;
//   String degstr, minstr, str;
  
//   str = instr;
//   colonIndex = str.indexOf(":");
  
//   if (colonIndex == -1) { // dd.dd?
//     if (!isPosNumber(str)) {
//       badLLFormat(instr);
//       return 0.0;
//     } else {
//       return double.parse(str);
//     }
//   }
  
//   // falls through if we have a colon
//   degstr = str.substring(0, colonIndex); // DD
//   str = str.substring(colonIndex + 1, str.length); // MM...
  
//   if (!isPosInteger(degstr)) {
//     badLLFormat(instr);
//     return 0.0;
//   } else {
//     deg = double.parse(degstr + ".0");
//   }
  
//   // now repeat to pick off minutes
//   colonIndex = str.indexOf(":");
  
//   if (colonIndex == -1) { // dd:mm.mm?
//     if (!isPosNumber(str)) {
//       badLLFormat(instr);
//       return 0.0;
//     } else {
//       min = double.parse(str);
//       if (min < 60.0) {
//         return deg + double.parse(str) / 60.0;
//       } else {
//         badLLFormat(instr);
//         return 0.0;
//       }
//     }
//   }
  
//   // falls through if we have a second colon
//   minstr = str.substring(0, colonIndex) + ".0"; // MM.0
//   str = str.substring(colonIndex + 1, str.length); // SS.SS
  
//   if (!isPosNumber(minstr) || !isPosNumber(str)) {
//     badLLFormat(instr);
//     return 0.0;
//   } else {
//     if (double.parse(minstr) < 60.0 && double.parse(str) < 60.0) {
//       return deg + double.parse(minstr) / 60.0 + double.parse(str) / 3600.0;
//     } else {
//       badLLFormat(instr);
//       return 0.0;
//     }
//   }
// }

// void badLLFormat(String str) {
//   print('$str is an invalid lat/lon format\n'
//       'Use DD.DD DD:MM.MM or DD:MM:SS.SS');
// }

// bool isPosInteger(String instr) {
//   String str = instr;
//   for (var i = 0; i < str.length; i++) {
//     var oneChar = str[i];
//     if (oneChar.compareTo('0') < 0 || oneChar.compareTo('9') > 0) {
//       return false;
//     }
//   }
//   return true;
// }

// bool isPosNumber(String instr) {
//   String str = instr;
//   bool oneDecimal = false;
//   for (var i = 0; i < str.length; i++) {
//     var oneChar = str[i];
//     if (oneChar == '.' && !oneDecimal) {
//       oneDecimal = true;
//       continue;
//     }
//     if (oneChar.compareTo('0') < 0 || oneChar.compareTo('9') > 0) {
//       return false;
//     }
//   }
//   return true;
// }

// double checkField(InputElement field) {
//   var str = field.name;
//   var latlon = parselatlon(field.value);
//   if (str.substring(0, 3) == 'lat') {
//     if (latlon > 90.0) {
//       print('Latitudes cannot exceed 90 degrees');
//       field.focus(); // Doesn't work!
//       field.select();
//     }
//   }
//   if (str.substring(0, 3) == 'lon') {
//     if (latlon > 180.0) {
//       print('Longitudes cannot exceed 180 degrees');
//       field.focus();
//       field.select();
//     }
//   }
//   return latlon;
// }

// double acosf(double x) {
//   /* protect against rounding error on input argument */
//   if (x.abs() > 1) {
//     x /= x.abs();
//   }
//   return acos(x);
// }


// double atan2(double y, double x) {
//   double out = 0;
//   if (x < 0) {
//     out = atan(y / x) + pi;
//   }
//   if ((x > 0) && (y >= 0)) {
//     out = atan(y / x);
//   }
//   if ((x > 0) && (y < 0)) {
//     out = atan(y / x) + 2 * pi;
//   }
//   if ((x == 0) && (y > 0)) {
//     out = pi / 2;
//   }
//   if ((x == 0) && (y < 0)) {
//     out = 3 * pi / 2;
//   }
//   if ((x == 0) && (y == 0)) {
//     print("atan2(0,0) undefined");
//     out = 0;
//   }
//   return out;
// }

// double mod(double x, double y) {
//   return x - y * (x ~/ y);
// }

// double modlon(double x) {
//   return mod(x + pi, 2 * pi) - pi;
// }

// double modcrs(double x) {
//   return mod(x, 2 * pi);
// }

// double modlat(double x) {
//   return mod(x + pi / 2, 2 * pi) - pi / 2;
// }

// String degtodm(double deg, int decplaces) {
//   // returns a rounded string DD:MM.MMMM
//   int deg1 = deg.floor();
//   double min = 60 * (deg - deg1);
//   String mins = format(min, decplaces);
//   // rounding may have rounded mins to 60.00-- sigh
//   if (mins.startsWith("6") && double.parse(mins) > 59.0) {
//     deg1 += 1;
//     mins = format(0, decplaces);
//   }
//   return "$deg1:$mins";
// }

// String format(double expr, int decplaces) {
//   String str = "${(expr * pow(10, decplaces)).round()}";
//   while (str.length <= decplaces) {
//     str = "0" + str;
//   }
//   int decpoint = str.length - decplaces;
//   return "${str.substring(0, decpoint)}.${str.substring(decpoint, str.length)}";
// }

// void showProps(Object obj, String objName) {
//   String result = "";
//   (obj as Map).forEach((key, value) {
//     result += "$objName.$key = $value\n";
//   });
//   print(result);
// }