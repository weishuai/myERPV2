import { SearchVo} from '../utils/SearchVo';
export class  InvoicePaymentSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class InvoicePaymentVo {
  id = '';

  mid = '';

  invoiceId = '';

  date?: Date = new Date();

  method = '';

  refNo = '';

  paymentAmount = '0';

  remark = '';

  photo = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
