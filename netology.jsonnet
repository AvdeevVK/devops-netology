local k = ( импорт  'ksonnet-util / kausal.libsonnet' );

{
  _config :: {
    имя: 'change_me' ,
    пространство имен: std.extVar ( 'qbec.io/defaultNs' ),

    container: {
      запросы: {cpu: '10m' , memory: '100Mi' },
      ограничения: {cpu: '200m' , memory: '200Mi' },
    },
  },

  local serviceAccount = k.core.v1.serviceAccount,

  serviceAccount:
    serviceAccount.new ($ ._ имя_конфигурации) +
    serviceAccount.mixin.metadata.withNamespace ($ ._ config.namespace),
}
