import { SearchVo} from '../utils/SearchVo';
export class  CountrySearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class CountryVo {
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
