import { SearchVo} from '../utils/SearchVo';
export class  ExchangeRateSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class ExchangeRateVo {
  id = '';

  name = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
