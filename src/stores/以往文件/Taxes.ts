import { SearchVo} from '../utils/SearchVo';
export class  TaxesSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class TaxesVo {
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
