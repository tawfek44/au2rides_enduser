abstract class PaymentMethodsRepository{
  clearPaymentMethodsDataInLocalDB({required tableName,required languageId});
  downloadPaymentMethodsFromNetworkDB({required tableDefinitions,required appLang});
  savePaymentMethodsDataInLocalDB({required values,required tableName});
}