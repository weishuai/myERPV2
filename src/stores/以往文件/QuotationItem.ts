import { SearchVo} from '../utils/SearchVo';
export class  QuotationItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class QuotationItemVo {
  id = '';

  mid = '';

  discountType = '';

  discount = '0';

  productname = '';

  name = '';

  photo = '';

  percentage = '';

  directPrice = '0';

  reduction = '0';

  description = '';

  qty = '0';

  unit = '';

  unitPrice = '0';

  unitCost = '0';

  remark = '0';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
