% Proje 3: Çoklu Fonksiyon Çizici
% Kullanıcı birden fazla fonksiyon, renk, çizgi tipi ve aralık seçebilir

clc; clear; close all;

% Kullanıcıdan x aralığı
xmin = input('X minimum değeri: ');
xmax = input('X maksimum değeri: ');
nPoints = input('Çizim çözünürlüğü (örn. 500): ');

x = linspace(xmin, xmax, nPoints);

% Fonksiyon listesi
fonksiyonlar = {@sin, @cos, @exp, @tan};
fonk_isimleri = {'sin(x)', 'cos(x)', 'exp(x)', 'tan(x)'};

disp('Seçebileceğiniz fonksiyonlar:');
for i = 1:length(fonk_isimleri)
    fprintf('%d: %s\n', i, fonk_isimleri{i});
end

% Kullanıcıdan fonksiyon indeksleri
secimler = input('Çizmek istediğiniz fonksiyonların numaralarını [örn. 1 3]: ');

% Renk ve çizgi stili listesi
renkler = {'b','r','g','m','k'};
stiller = {'-','--',':','-.'};

figure;
hold on; grid on;

for i = 1:length(secimler)
    idx = secimler(i);

    if idx < 1 || idx > length(fonksiyonlar)
        warning('Geçersiz seçim: %d', idx);
        continue;
    end

    % Kullanıcıdan stil seçimi
    fprintf('Fonksiyon %s için renk kodları: b, r, g, m, k\n', fonk_isimleri{idx});
    renk = input('Renk: ','s');
    if ~ismember(renk, renkler)
        renk = 'b'; % varsayılan
    end

    fprintf('Fonksiyon %s için çizgi stili: -, --, :, -.\n', fonk_isimleri{idx});
    stil = input('Çizgi stili: ','s');
    if ~ismember(stil, stiller)
        stil = '-';
    end

    % Fonksiyon hesaplama ve çizim
    y = fonksiyonlar{idx}(x);
    plot(x, y, [renk stil], 'LineWidth', 1.5, 'DisplayName', fonk_isimleri{idx});
end

xlabel('x'); ylabel('y');
title('Seçilen Fonksiyonların Karşılaştırmalı Grafiği');
legend show;
hold off;
