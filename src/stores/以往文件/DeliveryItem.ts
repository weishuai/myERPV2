import { SearchVo} from '../utils/SearchVo';
export class  DeliveryItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};

export class DeliveryItemVo {
  id = '';

  detailsId = '0';

  mid = '';

  name = '';

  description = '';

  qty = '';

  balanceQty = '';

  unit = '';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
