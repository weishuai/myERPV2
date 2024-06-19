import { SearchVo} from '../utils/SearchVo';
export class  InvoiceDetailsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
  mtable?: '';
};


export class InvoiceDetailsVo {
  id = '';

  refNumber = '';

  clientPoNumber = '';

  linkedUotation = '';

  invoiceNumber = '';

  invoiceStatus = '';

  invoiceName = '';

  account = '';

  salesPerson = '';

  clientContact = '';

  currency = '';

  tax = '';

  overDate = '0';

  isAlert = 'Normal';

  totalAmount = '0';

  paidAmount = '0';

  outstandingAmount = '0';

  ///FHpaidAmount = '0';

  ///FHoutstandingAmount = '0';

  invoiceDate?: Date = new Date();

  dueDate?: Date = new Date();

  techName = '';

  trackingNo = '';

  additionalField3 = '';

  additionalField4 = '';

  remark = '';

  clientNumber = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
