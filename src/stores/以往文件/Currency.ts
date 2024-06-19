import { SearchVo} from '../utils/SearchVo';
export class  CurrencySearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class CurrencyVo {
  id = '';

  name = '';

  rate = '';

  source = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
