import { SearchVo} from '../utils/SearchVo';
export class  WorkItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};


export class WorkItemVo {
  id = '';

  mid = '';

  name = '';

  description = '';

  qty = '0';

  unit = '';

  unitPrice = '0';

  discount = '0';

  total = '0';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
