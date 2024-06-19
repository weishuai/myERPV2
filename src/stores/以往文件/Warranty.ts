import { SearchVo} from '../utils/SearchVo';
export class  WarrantySearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class WarrantyVo {
  id = '';

  name = '';

  product = '';

  startDate?: Date = new Date();

  endDate?: Date = new Date();

  isRemind = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
