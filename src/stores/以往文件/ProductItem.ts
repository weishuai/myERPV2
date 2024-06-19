import { SearchVo} from '../utils/SearchVo';
export class  ProductItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class ProductItemVo {
  id = '';

  name = '';

  description = '';

  qty = '';

  unit = '';

  unitPrice = '';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
