# Beacon — окружение разработки

Публичный адрес: https://beacon-game-production.up.railway.app

Этот репозиторий содержит только описание поставки. Серверные исходники,
ключи подписи и пароли базы сюда не добавляются. Клиентские APK/PCK,
сайт, контент и собранный сервер находятся в отдельном Release-архиве.
Ресурсы установленного клиента доступны его пользователю.

Dockerfile скачивает фиксированный `runtime.tar.gz`, проверяет SHA-256
и запускает непривилегированный Go/Caddy runtime. Внешний HTTPS/WSS
предоставляет Railway; данные игроков находятся в отдельной Neon PostgreSQL.

Состав этой поставки: `development-20261003-7`, sequence7, minimum APK5,
протокол v4, Android package
`com.newproject.beacon`. Подписанные метаданные обновлений и проверка хешей
входят в клиент. Включены новые анимации девяти локаций и исправление
пустого инвентаря сервера. PCK обновляется внутри игры; для нового APK требуется
системное подтверждение Android. Это пилот вне магазинов.

В runtime необходимо передать `PORT=10000` и секрет `DATABASE_URL`:
прямой PostgreSQL endpoint без transaction pooler, `sslmode=verify-full`,
`pool_max_conns=8`. Healthcheck: `/readyz`; один экземпляр; graceful draining:
30 секунд. Пароли передаются только через секреты хостинга.

Для обновления сначала подготовить и проверить пакет, сохранить резервную
копию БД и закрыть экспортный snapshot. Затем остановить прежний deployment,
дождаться освобождения блокировки игрового мира и запустить новый
кандидат. Одновременный запуск двух владельцев мира запрещён.
После остановки использовать явный `railway up` из проверенного каталога
поставки, без позиционного `.`. Слепой `railway redeploy` после удаления
может выбрать старую неудачную тестовую поставку.

Для следующих обновлений сохранить этот HTTPS origin, существующие RSA
и Android signing keys, package identity и приватный release ledger.
Следующий sequence и versionCode нового APK должны быть выше принятого 7.
После принятой7 откат сервера сохраняет подписанные metadata и APK/PCK7
либо использует следующий sequence. Старый образ6 целиком не возвращается.

Railway запущен без карты: Trial ограничен 30 днями или $5, затем Free даёт
$1 в месяц. Neon Free тоже имеет квоты. Постоянная круглосуточная работа
на бесплатном бюджете не гарантируется; платная подписка не включена.

Приёмка7 завершена 2026-10-03. Один Railway deployment
`f9376eb1-f2f6-40ed-b078-297d7c985190` SUCCESS/ready200;
source1332/client816 stable,815 packed resources, package9175 и ownPG18
runtime74 PASS. PublicHTTPS/WSS510 и saved progress6→7 74/38 (24fields) PASS.
AndroidAPI35/x86_64/16KiB: прежний APK5 сам скачал signedPCK7 без
переустановки; freshAPK7 запустился из bundled7 без нового PCK GET.
В обеих фазах login/world/equipment/backpack PASS, script/runtime errors0.
Browser1152/390/320 проверен; own backend QA/auth/AVD/containers очищены.
Private ledger продвинут5→7 после независимых reviews.
[Итоговые hashes, scoped checks и ограничения](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-7/accepted-release7.json).

Доказательства исторической UI ошибки6 и ранних interrupted Android7
попыток сохраняются. Физический Android/ARM64/iOS/store, длительная
нагрузка и автоматическое расписание backup не приняты этой проверкой.

Подготовленные metadata в Release-архиве остаются неизменяемыми и отражают
состояние до выкладки. Итоговые доказательства deployment сохранены отдельно.

Кандидат обновления: `development-20261003-8`, sequence8/minimumAPK5, актуальный размер акторов.
Подготовлен и проверен; фактическая публичная приёмка8 фиксируется отдельно.
