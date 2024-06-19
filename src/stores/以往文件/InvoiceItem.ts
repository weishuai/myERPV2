import { SearchVo} from '../utils/SearchVo';
export class  InvoiceItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class InvoiceItemVo {
  id = '';

  mid = '';

  name = '';

  description = '';

  qty = '0';

  unit = '';

  unitPrice = '0';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
