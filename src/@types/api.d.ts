interface timeValueType {
  name: string;
  value: string;
  active: boolean;
}

interface nowValueType {
  name: string;
  // receivable:string,
  actualReceiptReceivable: string; //实收/应收
  ActualShouldIssued: string; //实发/应发
  info: string; //详情
  ReasonsMissingReports: string; //缺报原因
  isMissingReports: string; //是否确报
  time: string;
  receivable: string; //应发
  officialReceipts: string; //实发
  shouldBeIssued: string; //应收
  actualDelivery: string; //实收
}
