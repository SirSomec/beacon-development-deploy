# Beacon — окружение разработки

Публичный адрес: https://beacon-game-production.up.railway.app

Принят `development-20261003-9`, sequence9/minimumAPK5, 2026-10-03T11:18:17.264488+00:00.
Включены мини-карта и подробная карта с zoom/pan/точками; все завершённые
изменения после8 включены. Source1337/snapshot826/packed825/Main8afb совпадают
со снимком и текущими исходниками. Server/content/migrations/site byte-exact8.
Android package/cert, RSA, Godot4.6.2/bootstrap1/protocol4 и origin сохранены.

Репозиторий содержит только Dockerfile/README. Immutable SHA-pinned runtime
содержит собранные Go/Caddy, сайт/данные и APK/PCK. Private keys/passwords/данные
игроков и серверные исходники в репозиторий не добавляются. UID10001/GID1000;
Railway TLS/WSS, Neon PG18 direct endpoint/verify-full/pool8; PORT10000,
healthcheck/readyz, один экземпляр, drain30s. До deploy: fresh private backup,
isolated restore, export snapshot closed, exactlatestold owner removed,
REMOVED/ready404/noactive; затем explicit railway up из pinnedclean каталога
без позиционного пути. Два world owners и blind redeploy запрещены.

Actual9: deployment `fd928062-4bea-476a-aaa5-20c55251641c` SUCCESS/ready200.
Package9187, ownPG18 runtime80 (33wire included),
public510, progress8→9 80/36/24fields.
API35/x86_64/16KB: installedAPK8 автоматически получил signedPCK9; freshAPK9
использует bundled9 без дополнительного PCK GET. Login/world/equipment/backpack
и map gestures/Back/неподвижность героя проверены, script/runtime errors0.
Browser1152/390/320, backup restore27/4, own accounts/auth/AVD/containers cleanup,
exactinitialstates background packages restored. Independent reviews14 gates;
atomic ledger8→9 сохраняет owner/group/orderedDACL/protection.

[Hashes, gates, evidence и ограничения](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-9/accepted-release9.json).
[Предыдущая8](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-8/accepted-release8.json).

После первой публичной выдачи signed9 whole runtime8 возвращать нельзя:
sequence10+ либо compatible server runtime с неизменными client9 metadata/URLs/
APK/PCK. Совместимые PCK обновляются внутри игры. Native engine/plugin/bootstrap
потребуют APK update с системным подтверждением Android.

Бесплатный hosting ограничен квотами, карта/платный тариф не подключены.
PhysicalAndroid/ARM64/iOS/store/нагрузка/все карты/бой/FPS/тепло/батарея и
backup automation не приняты; разные прежние HUD FAIL4/mobile FAIL6/595 сохранены.
Prepared metadata сохраняют исходные candidate flags; фактическая приёмка
опубликована отдельным receipt. Sideload pilot не объявлен магазинным релизом.

Кандидат обновления: `development-20261003-10`, sequence10/minimumAPK5, исправление смены цели движения.
Подготовлен и проверен; фактическая публичная приёмка10 фиксируется отдельно.

Публичная приёмка10 завершена 2026-10-03T21:13:24.754447+00:00: исправление смены цели движения; installedAPK9→signedPCK10/freshAPK10, progress9→10, oneSUCCESS/ready200.
[Приёмка и точные SHA](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-10/accepted-release10.json). MinimumAPK5/protocol4/keys/DB сохранены. ЭмуляторAPI35/x86_64/16KB; physical/iOS/store отдельно.

Кандидат обновления: `storage-20261004-11-local-v2`, sequence11/minimumAPK5, очистка старых обновлений и меньший игровой пакет.
Подготовлен и проверен; фактическая публичная приёмка11 фиксируется отдельно.
После первой публичной выдачи signed11 полный runtime10 и ниже нельзя возвращать: только совместимый сервер с прежними байтами/URL/metadata клиента11 либо forward sequence12+.
