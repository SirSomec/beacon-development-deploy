# Beacon — окружение разработки

Публичный адрес: https://beacon-game-production.up.railway.app

Принят `development-20261003-8`, sequence8/minimumAPK5, 2026-10-03T06:18:51.178752+00:00.
Включён актуальный размер героя, монстров и NPC, подписи, касание и камера.
Сервер/контент/миграции/сайт byte-exact7; завершённая итерация размера акторов
зафиксирована в подписанном APK/PCK8. Начатая после заморозки параллельная
разработка мини-карты не включена в8; текущее рабочее дерево отличается от
его неизменяемого снимка. Идентичность `com.newproject.beacon`,
engine4.6.2/bootstrap1/protocol4, HTTPS/WSS origin и ключи сохранены.

Репозиторий содержит только Dockerfile/README. SHA-проверенный immutable
runtime.tar.gz содержит собранные Go/Caddy, сайт, игровые данные и клиентские
APK/PCK. Серверные исходники, private keys, пароли и данные игроков сюда не
добавляются. Runtime работает UID10001/GID1000; внешний TLS/WSS предоставляет
Railway, постоянная БД — Neon PostgreSQL.

Настройки: PORT10000, DATABASE_URL в provider secrets (direct endpoint,
sslmode=verify-full,pool_max_conns=8), healthcheck/readyz, один экземпляр,
drain30s. До обновления сохранить приватный backup и проверить restore,
закрыть snapshot; остановить точный старый deployment и подтвердить
REMOVED/ready404/noactive. Затем explicit railway up из pinnedclean каталога,
без позиционного пути. Два world owners и слепой redeploy запрещены.

Actual8: deployment 38fd2083-b0c5-48ed-a82f-79a877e4f5ba
SUCCESS/ready200, source1333/snapshot818/packed817, package9181,
ownPG18 runtime79 (33wire included), public508, progress7→8 70/39/24fields.
AndroidAPI35/x86_64/16KB: installedAPK7 автоматически получил signedPCK8;
freshAPK8 запущен с bundled8 без ещё одного PCK GET. World/hero/NPC/equipment/
backpack и script/runtime errors0 проверены. Browser1152/390/320 и own QA
account/auth/AVD/containers cleanup подтверждены. Три временно отключавшихся
фоновых приложения своего AVD включены и проверены; исходно наблюдалось
disabled-user, поэтому восстановление исходного состояния не заявляется.
Ledger атомарно продвинут7→8 после независимых reviews.

[Итоговые hashes, gates и ограничения](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-8/accepted-release8.json).
[Предыдущая принятая7](https://github.com/SirSomec/beacon-development-deploy/releases/download/development-20261003-7/accepted-release7.json).

Подписанный client8 уже мог быть получен пользователями: возврат к whole
runtime7 запрещён. Сохранять metadata/URLs/APK/PCK8 в совместимом server
runtime либо выпускать sequence9+. Native engine/plugin/bootstrap изменения
потребуют отдельного APK update с системным подтверждением Android; игровые
изменения совместимого PCK загружаются внутри игры.

Бесплатный Railway Trial ограничен30days/$5, затем Free$1/month; Neon имеет
квоты. Карта и платный тариф не включены, круглосуточная работа без квот не
обещана. PhysicalAndroid/ARM64/iOS/store/длительнаянагрузка и backup automation
не приняты. Известный UI baselineFAIL6/595 и исторические interrupted7
attempts сохраняются; этот sideload pilot не объявлен магазинным релизом.
Prepared metadata неизменяемы и остаются candidate до-выкладки; фактическая
приёмка опубликована отдельно.

Кандидат обновления: `development-20261003-9`, sequence9/minimumAPK5, мини-карта и подробная карта.
Подготовлен и проверен; фактическая публичная приёмка9 фиксируется отдельно.
