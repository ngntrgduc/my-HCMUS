km = input('nhap quang duong di duoc: ');
if (km < 2)
    fprintf('so tien phai tra la: %g', 15000 * km);
elseif (km >= 2) && (km <=5)
    fprintf('so tien phai tra la: %g', 13500 * km);
elseif (km >= 6) && (km < 120)
    fprintf('so tien phai tra la: %g', 11000 * km);
elseif (km > 120)
    fprintf('so tien phai tra la: %2.f', 11000 * km * 90 / 100);
end