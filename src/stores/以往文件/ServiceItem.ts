import { SearchVo} from '../utils/SearchVo';
export class  ServiceItemSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
  mid?: '';
};

export class ServiceItemVo {
  id = '';

  mid = '';

  name = '';

  description = '';

  startDate?: Date = new Date();

  endDate?: Date = new Date();

  qty = '';

  remarks = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
