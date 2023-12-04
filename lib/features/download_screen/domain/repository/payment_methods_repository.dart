abstract class PaymentMethodsRepository{
  clearPaymentMethodsDataInLocalDB({required tableName});
  downloadPaymentMethodsFromNetworkDB({required tableDefinitions,required appLang});
  savePaymentMethodsDataInLocalDB({required values,required tableName});
}