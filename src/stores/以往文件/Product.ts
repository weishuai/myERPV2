import { SearchVo} from '../utils/SearchVo';
export class  ProductSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class ProductVo {
  id = '';

  productName = '';

  photo = '';

  description = '';

  manufacturer = '';

  category = '';

  unit = '';

  currency = '';

  listPrice = '';

  cost = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
