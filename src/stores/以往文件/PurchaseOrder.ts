import { SearchVo} from '../utils/SearchVo';
export class  PurchaseOrderSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class PurchaseOrderVo {
  id = '';

  refNumber = '';

  name = '';

  currency = '';

  contact = '';

  paymentTerms = '';

  taxes = '';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
