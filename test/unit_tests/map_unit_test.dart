import 'package:test/test.dart';
import 'package:glasgow_necropolis_tour/pages/map.dart';

void main() {
  test('Check Map centres to the correct GPS coordinates', () {
    final map = MyLocationState();
    expect(map.necropolisLong, -4.231027);
    expect(map.necropolisLat, 55.863559);
  });

}

